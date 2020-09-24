import 'package:flutter/material.dart';
import 'package:waClone/widgets/contact_list.dart';
import 'package:waClone/models/contact.dart';

class SelectContact extends StatelessWidget {

  final List<String> menuList = [
    'Invite a friend',
    'Contacts',
    'Refresh',
    'Help',
  ];

  @override
  Widget build(BuildContext context) {
    int listLength = listContact.length;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select contact',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              '$listLength contacts', 
              style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.w400
              )
            )
          ],
        ),
        backgroundColor: Color(0xFF075E55),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            splashRadius: 25.0,
            tooltip: 'Search',
            onPressed: () {},
          ),
          PopupMenuButton(
            padding: EdgeInsets.all(0),
            tooltip: 'More options',
            elevation: 20,
            itemBuilder: (context) => menuList.map((menu) => PopupMenuItem(
              child: Text(menu)
              )
            ).toList(),
          )
        ],
      ),
      body: ContactList(),
    );
  }
}