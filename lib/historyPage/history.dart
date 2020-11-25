import 'package:flutter/material.dart';
import '../constant.dart';
import 'historyItem.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 50),
      child: HistoryItems(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: PrimaryColor, spreadRadius: 1),
        ],
      ),
    );
  }
}
//this widget is used to create a box
