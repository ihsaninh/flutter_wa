import 'package:flutter/material.dart';
import 'package:waClone/models/call.dart';

class HistoryCall extends StatelessWidget {

  final Call historyCall;
  HistoryCall({ this.historyCall });

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
              image: NetworkImage(historyCall.avatar)
          )
        )
      ),
      title: Text(
        historyCall.name,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w600
        ),
      ),
      subtitle: Row(
        children: [
          historyCall.callType == CallType.incoming 
            ? Icon(Icons.call_received, size: 16, color: Color(0xFF00CC3F)) 
            : Icon(Icons.call_made, size: 16, color: Colors.red),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(historyCall.time),
          )
        ],
      ),
      trailing: Icon(
        historyCall.type == Type.voiceCall 
          ? Icons.phone
          : Icons.videocam,
        size: 28,
        color: Colors.teal,
      ),
    );
  }
}