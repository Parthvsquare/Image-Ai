import 'package:flutter/material.dart';
import '../constant.dart';
import 'historyitemrow.dart';

class HistoryItems extends StatefulWidget {
  @override
  _HistoryItemsState createState() => _HistoryItemsState();
}

class _HistoryItemsState extends State<HistoryItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 10, left: 15, bottom: 5),
          child: Text(
            'History',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          height: 1,
          width: double.infinity,
          color: PrimaryColor,
        ),
//----------------------------------Niche wale repeat kar----------------------------------//
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: HistoryItemsRow(),
        ),
        Container(
          child: HistoryItemsRow(),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Container(
          child: HistoryItemsRow(),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Container(
          child: HistoryItemsRow(),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Container(
          child: HistoryItemsRow(),
          margin: EdgeInsets.only(bottom: 10),
        ),
      ],
    );
  }
}
