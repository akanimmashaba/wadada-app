// chats_screen.dart
import 'package:flutter/material.dart';
import 'package:wadada/pages/chart/chat_list.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search
            },
          ),
        ],
      ),
      body: ChatList(),
    );
  }
}
