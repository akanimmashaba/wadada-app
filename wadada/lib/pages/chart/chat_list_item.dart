// chat_list_item.dart
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final Map<String, dynamic> chat;

  const ChatListItem({required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(chat['profileImage']),
      ),
      title: Text(chat['name']),
      subtitle: Text(chat['lastMessage']),
      trailing: Text(chat['timestamp']),
      onTap: () {
        Navigator.pushNamed(context, '/chat_details', arguments: chat['id']);
      },
    );
  }
}
