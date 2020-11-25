import 'package:flutter/material.dart';
import '../constant.dart';

class ReviewItemRow extends StatefulWidget {
  @override
  _ReviewItemRowState createState() => _ReviewItemRowState();
}

class _ReviewItemRowState extends State<ReviewItemRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
//----------------------------------This is the Name of that character ----------------------------------//
        Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.only(top: 25),
          height: 70,
          child: Text(
            'Human',
            style: TextStyle(fontSize: 14),
          ),
        ),
//----------------------------------This is the percentage part----------------------------------//
        Container(
          margin: EdgeInsets.only(right: 60),
          padding: EdgeInsets.only(top: 25),
          child: Text(
            '0.78',
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          height: 70,
        ),
      ],
    );
  }
}
//this widget contains table of contents
