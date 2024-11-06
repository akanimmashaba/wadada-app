// chat_details_screen.dart
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatefulWidget {
  final String
      chatId; // The chat ID or user name for loading specific chat data

  const ChatDetailsScreen({Key? key, required this.chatId}) : super(key: key);

  @override
  _ChatDetailsScreenState createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final List<Map<String, String>> messages = [
    {'sender': 'Alice', 'text': 'Hi there!'},
    {'sender': 'You', 'text': 'Hello! How are you?'},
    // More messages
  ];
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Chat with ${widget.chatId}'), // Replace with recipient name if available
      ),
      body: Column(
        children: [
          // Message list
          Expanded(
            child: ListView.builder(
              reverse: true, // Display recent messages at the bottom
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isSentByUser = message['sender'] == 'You';
                return Align(
                  alignment: isSentByUser
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: isSentByUser ? Colors.blue : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      message['text'] ?? '',
                      style: TextStyle(
                          color: isSentByUser ? Colors.white : Colors.black),
                    ),
                  ),
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
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to send a message
  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        messages.insert(0, {'sender': 'You', 'text': _messageController.text});
      });
      _messageController.clear();
      // Implement sending message to backend here
    }
  }
}
