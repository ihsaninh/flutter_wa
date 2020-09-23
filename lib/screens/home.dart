import 'package:flutter/material.dart';
import 'package:waClone/screens/chats.dart';

class HomePage extends StatelessWidget {

  final List<String> tabList = [
    'CAMERA',
    'CHATS',
    'STATUS',
    'CALLS'
  ];

  final List<String> menuList = [
    'New group',
    'New broadcast',
    'WhatsApp Web',
    'Starred messages',
    'Settings'
  ];
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double cameraWidth = width / 24;
    double otherTabWidth = (width - cameraWidth) / 5;
    double labelPadding = (width - ( cameraWidth + otherTabWidth * 3)) / 8;

    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 22),
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
              tooltip: 'More options',
              elevation: 20,
              itemBuilder: (context) => menuList.map((menu) => PopupMenuItem(
                child: Text('$menu')
                )
              ).toList(),
            )
          ],
          bottom: tabBar(labelPadding, cameraWidth, otherTabWidth),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            ChatScreen(),
            Icon(Icons.directions_bike),
            Icon(Icons.chat),
          ],
        ),
      ),
    );
  }

  Widget tabBar(double labelPadding, double cameraWidth, double otherTabWidth) {
    return TabBar(
      isScrollable: true,
      indicatorColor: Colors.white,
      indicatorWeight: 2.5,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      labelPadding: EdgeInsets.symmetric(horizontal: labelPadding),
      tabs: tabList.map((label) {
        return Container(
          child: label == 'CAMERA' ? Tab(icon: Icon(Icons.camera_alt, size: 22)) : Tab(text: '$label'),
          width: label == 'CAMERA' ? cameraWidth : otherTabWidth,
        );
      }).toList(),
    );
  }
}