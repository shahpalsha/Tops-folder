import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AllUsersPage extends StatefulWidget {
  final String title;
  const AllUsersPage({super.key, required this.title});

  @override
  State<AllUsersPage> createState() => _AllUsersPageState();
}

class _AllUsersPageState extends State<AllUsersPage> {
  final String? currentUserId = FirebaseAuth.instance.currentUser?.uid;

  Future<void> sendFriendRequest(String receiverId) async {
    await FirebaseFirestore.instance.collection('friend_requests').add({
      'senderId': currentUserId,
      'receiverId': receiverId,
      'status': 'pending',
      'timestamp': FieldValue.serverTimestamp(),
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Friend request sent')),
    );
  }

  Future<void> cancelFriendRequest(String requestId) async {
    await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).delete();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Friend request cancelled')),
    );
  }

  Future<void> acceptFriendRequest(String requestId, String receiverId, String senderId) async {
    await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).update({
      'status': 'accepted',
    });

    final friendRef = FirebaseFirestore.instance.collection('friends');

    await friendRef.doc(receiverId).collection('friendsList').doc(senderId).set({
      'friendId': senderId,
      'timestamp': FieldValue.serverTimestamp(),
    });

    await friendRef.doc(senderId).collection('friendsList').doc(receiverId).set({
      'friendId': receiverId,
      'timestamp': FieldValue.serverTimestamp(),
    });

    await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).delete();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Friend request accepted')),
    );
  }

  Future<void> removeFriend(String userId) async {
    await FirebaseFirestore.instance
        .collection('friends')
        .doc(currentUserId)
        .collection('friendsList')
        .doc(userId)
        .delete();

    await FirebaseFirestore.instance
        .collection('friends')
        .doc(userId)
        .collection('friendsList')
        .doc(currentUserId)
        .delete();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Friend removed')),
    );
  }

  Future<void> deleteUser(String userId) async {
    // Deleting the user from the 'all users' collection
    await FirebaseFirestore.instance.collection('all users').doc(userId).delete();

    // Optionally, remove the user from any other collections where they exist (e.g., friend requests, friends, etc.)
    await FirebaseFirestore.instance.collection('friend_requests').where('senderId', isEqualTo: userId).get().then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });

    await FirebaseFirestore.instance.collection('friend_requests').where('receiverId', isEqualTo: userId).get().then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });

    await FirebaseFirestore.instance.collection('friends').doc(userId).collection('friendsList').get().then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('User deleted')),
    );
  }

  Future<void> _updateUser(String docId, String currentName, String currentStatus) async {
    final nameController = TextEditingController(text: currentName);
    final statusController = TextEditingController(text: currentStatus);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Update User Details'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Name')),
            TextField(controller: statusController, decoration: const InputDecoration(labelText: 'Status')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              await FirebaseFirestore.instance.collection('all users').doc(docId).update({
                'name': nameController.text,
                'status': statusController.text,
              });
              Navigator.pop(context);
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('all users').orderBy('createdAt', descending: true).snapshots(),
        builder: (context, userSnapshot) {
          if (!userSnapshot.hasData) return const Center(child: CircularProgressIndicator());

          final users = userSnapshot.data!.docs.where((doc) => doc.id != currentUserId).toList();

          return StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('friend_requests').snapshots(),
            builder: (context, requestSnapshot) {
              final requests = requestSnapshot.data?.docs ?? [];

              return StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('friends')
                    .doc(currentUserId)
                    .collection('friendsList')
                    .snapshots(),
                builder: (context, friendsSnapshot) {
                  final friendsList = friendsSnapshot.data?.docs.map((e) => e.id).toSet() ?? {};

                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final doc = users[index];
                      final data = doc.data() as Map<String, dynamic>;
                      final name = data['name'] ?? 'No Name';
                      final statusText = data['status'] ?? 'No status';
                      final timestamp = data['createdAt'] as Timestamp?;
                      final formattedDate = timestamp != null
                          ? DateFormat('MMM dd, yyyy hh:mm:ss').format(timestamp.toDate())
                          : 'Date not available';

                      String buttonLabel = 'Send Request';
                      String? requestId;
                      bool isSender = false;

                      for (var req in requests) {
                        final sender = req['senderId'];
                        final receiver = req['receiverId'];
                        final status = req['status'];

                        if ((sender == currentUserId && receiver == doc.id) ||
                            (sender == doc.id && receiver == currentUserId)) {
                          requestId = req.id;
                          isSender = sender == currentUserId;
                          if (status == 'pending') {
                            buttonLabel = isSender ? 'Cancel Request' : 'Accept Request';
                          }
                          break;
                        }
                      }

                      if (friendsList.contains(doc.id)) {
                        buttonLabel = 'Friends';
                      }

                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.teal,
                            child: Icon(Icons.account_circle, color: Colors.white, size: 30),
                          ),
                          title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(statusText),
                              const SizedBox(height: 4),
                              Text(formattedDate, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  if (buttonLabel == 'Send Request') {
                                    await sendFriendRequest(doc.id);
                                  } else if (buttonLabel == 'Cancel Request' && requestId != null) {
                                    await cancelFriendRequest(requestId);
                                  } else if (buttonLabel == 'Accept Request' && requestId != null) {
                                    await acceptFriendRequest(requestId, currentUserId!, doc.id);
                                  } else if (buttonLabel == 'Friends') {
                                    await removeFriend(doc.id);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  side: const BorderSide(color: Colors.teal),
                                ),
                                child: Text(buttonLabel, style: const TextStyle(fontSize: 12, color: Colors.teal)),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.teal),
                                onPressed: () async {
                                  await deleteUser(doc.id);
                                },
                              ),
                            ],
                          ),
                          onTap: () => _updateUser(doc.id, name, statusText),
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
