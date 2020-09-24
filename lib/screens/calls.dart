import 'package:flutter/material.dart';
import 'package:waClone/models/call.dart';
import 'package:waClone/widgets/history_call.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: historyCall.length,
        separatorBuilder: (context, index) => Divider(
          height: 2, 
          color: Colors.grey[300], 
          indent: 90, 
          endIndent: 16
        ),
        itemBuilder: (context, index) => HistoryCall(historyCall: historyCall[index]),
      ),
    );
  }
}