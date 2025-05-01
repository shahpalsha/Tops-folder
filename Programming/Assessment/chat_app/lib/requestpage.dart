import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RequestsPage extends StatefulWidget {
  final String title;
  const RequestsPage({super.key, required this.title});

  @override
  State<RequestsPage> createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
  final String? currentUserId = FirebaseAuth.instance.currentUser?.uid;

  Future<void> acceptFriendRequest(String requestId) async {
    await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).update({
      'status': 'accepted',
    });
  }

  Future<void> declineFriendRequest(String requestId) async {
    await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).update({
      'status': 'declined',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('friend_requests')
            .where('receiverId', isEqualTo: currentUserId)
            .where('status', isEqualTo: 'pending')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final requests = snapshot.data!.docs;

          if (requests.isEmpty) {
            return Center(child: Text('No friend requests.'));
          }

          return ListView.builder(
            itemCount: requests.length,
            itemBuilder: (context, index) {
              final request = requests[index];
              final senderId = request['senderId'];
              final requestId = request.id;

              return FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance.collection('all users').doc(senderId).get(),
                builder: (context, userSnapshot) {
                  if (!userSnapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }

                  final user = userSnapshot.data!;
                  final name = user['name'] ?? 'No Name';
                  final photoUrl = user['photoUrl'];

                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(photoUrl ?? 'https://tse1.mm.bing.net/th?id=OIP.5v-TkqaYQehgtxwatQBIxwHaHa&pid=Api&P=0&h=180'),
                      ),
                      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Friend request'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              await acceptFriendRequest(requestId);
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                            child: Text('Accept', style: TextStyle(fontSize: 12)),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () async {
                              await declineFriendRequest(requestId);
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                            child: Text('Decline', style: TextStyle(fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
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
