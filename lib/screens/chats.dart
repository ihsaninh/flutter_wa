import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:waClone/models/chat.dart';
import 'package:waClone/widgets/chatlist_tile.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Color(0xFF075E55),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider( 
              height: 2, 
              color: Colors.grey[300], 
              indent: 90, 
              endIndent: 16
            ),
            itemCount: listChat.length,
            itemBuilder: (context, index) => ChatListTile(chat: listChat[index]),
          ),
        ),
      ),
    );
  }
}