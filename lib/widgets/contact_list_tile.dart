import 'package:flutter/material.dart';
import 'package:waClone/models/contact.dart';

class ContactListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: listContact.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(listContact[index].avatar),
          ),
          title: Text(
            listContact[index].name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17
            ),
          ),
          subtitle: Text(
            listContact[index].bio
          ),
        );
      },
    );
  }
}