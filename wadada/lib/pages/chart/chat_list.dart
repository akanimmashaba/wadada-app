// chat_list.dart
import 'package:flutter/material.dart';
import 'package:wadada/pages/chart/chat_list_item.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      'id': 1,
      'name': 'Alice',
      'lastMessage': 'Hello!',
      'timestamp': '5:00 PM',
      'profileImage': 'assets/alice.jpg'
    },
    {
      'id': 1,
      'name': 'Jessica',
      'lastMessage': 'hey!',
      'timestamp': '5:00 PM',
      'profileImage': 'assets/alice.jpg'
    },
    {
      'id': 1,
      'name': 'palesa',
      'lastMessage': 'Hello!',
      'timestamp': '5:00 PM',
      'profileImage': 'assets/alice.jpg'
    },
    // Add more sample chat data
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatListItem(chat: chat);
      },
    );
  }
}
