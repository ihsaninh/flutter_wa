import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waClone/screens/calls.dart';
import 'package:waClone/screens/chats.dart';
import 'package:waClone/screens/select_contact.dart';
import 'package:waClone/screens/status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  final List<String> tabList = ['CAMERA', 'CHATS', 'STATUS', 'CALLS'];

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
    double labelPadding = (width - (cameraWidth + otherTabWidth * 3)) / 8;

    return Scaffold(
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
            itemBuilder: (context) => menuList
                .map((menu) => PopupMenuItem(child: Text(menu)))
                .toList(),
          )
        ],
        bottom: tabBar(labelPadding, cameraWidth, otherTabWidth),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Icon(Icons.directions_car),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: _floatingActionButton(),
    );
  }

  Widget tabBar(double labelPadding, double cameraWidth, double otherTabWidth) {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      indicatorColor: Colors.white,
      indicatorWeight: 2.5,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      labelPadding: EdgeInsets.symmetric(horizontal: labelPadding),
      tabs: tabList.map((label) {
        return Container(
          child: label == 'CAMERA'
              ? Tab(icon: Icon(Icons.camera_alt, size: 22))
              : Tab(text: label),
          width: label == 'CAMERA' ? cameraWidth : otherTabWidth,
        );
      }).toList(),
    );
  }

  Widget _floatingActionButton() {
    int activeTab = _tabController.index;
    switch (activeTab) {
      case 1:
        return _floatingHome();
      case 2:
      case 3:
        return _floatingStatusOrCall();
      default:
        return null;
    }
  }

  Widget _floatingHome() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (context) => SelectContact()));
      },
      child: Icon(Icons.chat),
      backgroundColor: Color(0xFF00CC3F),
    );
  }

  Widget _floatingStatusOrCall() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 45,
          width: 45,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
                _tabController.index == 2 ? Icons.edit : Icons.video_call,
                color: Colors.teal[900]),
            backgroundColor: Colors.grey[100],
          ),
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(_tabController.index == 2
              ? Icons.camera_alt
              : Icons.add_call),
          backgroundColor: Color(0xFF00CC3F),
        ),
      ],
    );
  }
}
