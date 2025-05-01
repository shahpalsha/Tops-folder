import 'package:chat_app/account_settings.dart';
import 'package:chat_app/registerpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'all_users_details.dart';
import 'createuser.dart';
import 'chatscreen.dart'; // Import the ChatScreen widget

class myhomepage extends StatefulWidget {
  final String title;
  const myhomepage({super.key, required this.title});

  @override
  State<myhomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<myhomepage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String? currentUserId;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      currentUserId = user.uid;
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Logout'),
        content: const Text('Are you sure you want to log out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Myregister(title: 'Register'),
                ),
              );
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  Future<void> acceptFriendRequest(String requestId, String senderId, String receiverId, String senderName, String receiverName) async {
    try {
      await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).update({
        'status': 'accepted',
      });

      final friendRef = FirebaseFirestore.instance.collection('friends');

      await friendRef.doc(receiverId).collection('friendsList').doc(senderId).set({
        'friendId': senderId,
        'friendName': senderName,
        'status': 'accepted',
        'timestamp': FieldValue.serverTimestamp(),
      });

      await friendRef.doc(senderId).collection('friendsList').doc(receiverId).set({
        'friendId': receiverId,
        'friendName': receiverName,
        'status': 'accepted',
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Friend request accepted')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error accepting request: $e')),
      );
    }
  }

  Future<void> cancelFriendRequest(String requestId) async {
    try {
      await FirebaseFirestore.instance.collection('friend_requests').doc(requestId).delete();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Friend request declined')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error declining request: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lets Chat',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
          ),
          backgroundColor: Colors.teal,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onSelected: (value) {
                if (value == 'account_settings') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSettingsPage(),));
                } else if (value == 'all_users') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllUsersPage(title: 'All Users'),
                    ),
                  );
                } else if (value == 'create_user') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateUser(),
                    ),
                  );
                } else if (value == 'logout') {
                  _showLogoutDialog(context);
                }
              },
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: 'account_settings',
                  child: Row(
                    children: [
                      Icon(Icons.settings, size: 20, color: Colors.teal),
                      SizedBox(width: 10),
                      Text('Account Settings'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'all_users',
                  child: Row(
                    children: [
                      Icon(Icons.group, color: Colors.teal, size: 20),
                      SizedBox(width: 10),
                      Text('All Users'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'create_user',
                  child: Row(
                    children: [
                      Icon(Icons.person_add, color: Colors.teal, size: 20),
                      SizedBox(width: 10),
                      Text('Create User'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'logout',
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.teal, size: 20),
                      SizedBox(width: 10),
                      Text('Logout'),
                    ],
                  ),
                ),
              ],
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: const [
              Tab(text: 'REQUESTS'),
              Tab(text: 'CHATS'),
              Tab(text: 'FRIENDS'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // REQUESTS TAB
            Column(
              children: [
                Expanded(
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('friend_requests')
                        .where('senderId', isEqualTo: currentUserId)
                        .where('status', isEqualTo: 'pending')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final sentRequests = snapshot.data!.docs;
                      if (sentRequests.isEmpty) {
                        return const Center(child: Text('No sent friend requests.'));
                      }
                      return ListView.builder(
                        itemCount: sentRequests.length,
                        itemBuilder: (context, index) {
                          final request = sentRequests[index].data() as Map<String, dynamic>;
                          final receiverName = request['receiverName'] ?? 'Unknown';
                          final requestId = sentRequests[index].id;
                          final receiverId = request['receiverId'];

                          return ListTile(
                            leading: const CircleAvatar(child: Icon(Icons.person)),
                            title: Text('Sent to: $receiverName'),
                            subtitle: const Text('You sent this request'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.check, color: Colors.green),
                                  onPressed: () {
                                    acceptFriendRequest(
                                      requestId,
                                      receiverId,
                                      currentUserId!,
                                      FirebaseAuth.instance.currentUser?.displayName ?? 'Users',
                                      receiverName,
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.close, color: Colors.red),
                                  onPressed: () => cancelFriendRequest(requestId),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),

            // CHATS TAB
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('friends')
                  .doc(currentUserId)
                  .collection('friendsList')
                  .where('status', isEqualTo: 'accepted')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final friends = snapshot.data!.docs;
                if (friends.isEmpty) {
                  return const Center(child: Text('No friends to chat with.'));
                }

                return ListView.builder(
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    final friend = friends[index].data() as Map<String, dynamic>;
                    final friendId = friend['friendId'];
                    final friendName = friend['friendName'];

                    // Get the last message in the chat between the user and the friend
                    return FutureBuilder<QuerySnapshot>(
                      future: FirebaseFirestore.instance
                          .collection('chats')
                          .doc(friendId)
                          .collection('messages')
                          .orderBy('timestamp', descending: true)
                          .limit(1)
                          .get(),
                      builder: (context, messageSnapshot) {
                        if (!messageSnapshot.hasData) {
                          return const Center(child: CircularProgressIndicator());
                        }

                        final lastMessage = messageSnapshot.data!.docs.isEmpty
                            ? 'No messages yet.'
                            : messageSnapshot.data!.docs.first['message'] as String;

                        return ListTile(
                          leading: const CircleAvatar(child: Icon(Icons.person)),
                          title: Text(friendName),
                          subtitle: Text(lastMessage),
                          trailing: IconButton(
                            icon: const Icon(Icons.message, color: Colors.teal),
                            onPressed: () {
                              // Navigate to the chat screen with the friend
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen(
                                    friendId: friendId,
                                    friendName: friendName,
                                  ),
                                ),
                              );
                            },
                          ),
                          onTap: () {
                            // Navigate to the chat screen when tapping on the friend's ID or name
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(
                                  friendId: friendId,
                                  friendName: friendName,
                                ),
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



            //friends tabbar
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('friends')
                  .doc(currentUserId)
                  .collection('friendsList')
                  .where('status', isEqualTo: 'accepted')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final friends = snapshot.data!.docs;
                if (friends.isEmpty) {
                  return const Center(child: Text('You have no friends to chat with.'));
                }

                return ListView.builder(
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    final friend = friends[index].data() as Map<String, dynamic>;
                    final friendId = friend['friendId'];
                    final friendName = friend['friendName'];

                    // Get the last message between the user and the friend
                    return FutureBuilder<QuerySnapshot>(
                      future: FirebaseFirestore.instance
                          .collection('chats')
                          .doc(friendId)
                          .collection('messages')
                          .orderBy('timestamp', descending: true)
                          .limit(1)
                          .get(),
                      builder: (context, messageSnapshot) {
                        if (!messageSnapshot.hasData) {
                          return const Center(child: CircularProgressIndicator());
                        }

                        final lastMessage = messageSnapshot.data!.docs.isEmpty
                            ? 'No messages yet.'
                            : messageSnapshot.data!.docs.first['message'] as String;

                        return ListTile(
                          leading: const CircleAvatar(child: Icon(Icons.person)),
                          title: Text(friendName),
                          subtitle: Text(lastMessage),
                          trailing: IconButton(
                            icon: const Icon(Icons.message, color: Colors.teal),
                            onPressed: () {
                              // Navigate to the chat screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen(
                                    friendId: friendId,
                                    friendName: friendName,
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                );
              },
            )

          ],
        ),
      ),
    );
  }
}
