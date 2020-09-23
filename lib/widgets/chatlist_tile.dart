import 'package:flutter/material.dart';
import 'package:waClone/models/chat.dart';

class ChatListTile extends StatelessWidget {

  final Chat chat;
  ChatListTile({ this.chat });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(chat.avatar)
          )
        )
      ),
      title: Text(
        chat.author,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17
        ),
      ),
      subtitle: Text(
        chat.lastChat,
      ),
      trailing: Text(
        chat.time,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 13
        ),
      ),
    );
  }
}