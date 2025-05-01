import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String friendId;
  final String friendName;

  const ChatScreen({super.key, required this.friendId, required this.friendName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Send message function
  void _sendMessage() async {
    final message = _controller.text.trim();
    if (message.isNotEmpty) {
      final currentUserId = FirebaseAuth.instance.currentUser!.uid;
      final timestamp = FieldValue.serverTimestamp();

      // Save message to both currentUserId and friendId
      await _firestore.collection('chats')
          .doc(currentUserId)
          .collection('messages')
          .add({
        'message': message,
        'senderId': currentUserId,
        'receiverId': widget.friendId,
        'timestamp': timestamp,
      });

      await _firestore.collection('chats')
          .doc(widget.friendId)
          .collection('messages')
          .add({
        'message': message,
        'senderId': currentUserId,
        'receiverId': widget.friendId,
        'timestamp': timestamp,
      });

      _controller.clear(); // Clear input field after sending
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId = FirebaseAuth.instance.currentUser!.uid;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.friendName),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Message list
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('chats')
                  .doc(currentUserId)
                  .collection('messages')
                  .orderBy('timestamp')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const SizedBox.shrink(); // No loading spinner
                }

                final allMessages = snapshot.data!.docs.where((doc) {
                  final data = doc.data() as Map<String, dynamic>;
                  final sender = data['senderId'];
                  final receiver = data['receiverId'];
                  return (sender == widget.friendId && receiver == currentUserId) ||
                      (sender == currentUserId && receiver == widget.friendId);
                }).toList();

                return ListView.builder(
                  itemCount: allMessages.length,
                  itemBuilder: (context, index) {
                    final doc = allMessages[index];
                    final messageData = doc.data() as Map<String, dynamic>;
                    final message = messageData['message'] ?? '';
                    final senderId = messageData['senderId'];

                    return ListTile(
                      title: GestureDetector(
                        onLongPress: () async {
                          final shouldDelete = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Delete Message'),
                              content: const Text('Are you sure you want to delete this message?'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(false),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(true),
                                  child: const Text('Delete', style: TextStyle(color: Colors.red)),
                                ),
                              ],
                            ),
                          );

                          if (shouldDelete ?? false) {
                            final messageId = doc.id;
                            final timestamp = messageData['timestamp'];
                            final receiverId = messageData['receiverId'];

                            // Delete from current user's collection
                            await _firestore
                                .collection('chats')
                                .doc(currentUserId)
                                .collection('messages')
                                .doc(messageId)
                                .delete();

                            // Delete from receiver's collection by matching message + timestamp
                            final receiverMessages = await _firestore
                                .collection('chats')
                                .doc(receiverId)
                                .collection('messages')
                                .where('message', isEqualTo: message)
                                .where('timestamp', isEqualTo: timestamp)
                                .get();

                            for (var doc in receiverMessages.docs) {
                              await doc.reference.delete();
                            }
                          }
                        },
                        child: Align(
                          alignment: senderId == currentUserId
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.symmetric(vertical: 4.0),
                            decoration: BoxDecoration(
                              color: senderId == currentUserId
                                  ? Colors.teal
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Text(
                              message,
                              style: TextStyle(
                                color: senderId == currentUserId
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),

          // Message input and send button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.teal),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
