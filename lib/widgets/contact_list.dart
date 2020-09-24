import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'package:waClone/widgets/contact_list_tile.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Color(0xFF00CC3F),
                  child: Icon(Icons.group, color: Colors.white,),
                ),
                title: Text(
                  'New group',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Color(0xFF00CC3F),
                  child: Icon(Icons.person_add, color: Colors.white),
                ),
                title: Text(
                  'New contact',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),
                ),
              )
            ],
          ),
        ),
        ContactListTile(),
        ListTile(
          onTap: () => _onShare(context),
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.share, color: Colors.grey),
          ),
          title: Text(
            'Invite friends',
            style: TextStyle(
              fontSize: 17
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.help, color: Colors.grey),
          ),
          title: Text(
            'Contacts help',
            style: TextStyle(
              fontSize: 17
            ),
          ),
        )
      ],
    );
  }

  _onShare(BuildContext context) async {
    final RenderBox box = context.findRenderObject();

    await Share.share('Tes',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
    );

  }

}