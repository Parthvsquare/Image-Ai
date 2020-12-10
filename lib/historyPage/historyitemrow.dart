import 'package:flutter/material.dart';
import '../constant.dart';

class HistoryItemsRow extends StatelessWidget {
  final photo;
  final name;
  HistoryItemsRow(this.photo, this.name);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 5),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: PrimaryColor, spreadRadius: 0.2),
            ],
            image: DecorationImage(
              image: AssetImage("$photo"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          padding: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              width: 1,
              color: PrimaryColor,
            ),
          ),
          child: Text(
            '$name',
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          width: 250,
          height: 70,
        ),
      ],
    );
  }
}
//these are the row which contain a picture and it's best prediction
