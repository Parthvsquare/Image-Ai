import 'package:flutter/material.dart';
import '../constant.dart';

class HistoryItemsRow extends StatelessWidget {
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
              BoxShadow(color: PrimaryColor, spreadRadius: 0.6),
            ],
            image: DecorationImage(
              image: AssetImage("assets/Object-detection.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5, right: 10),
          padding: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              width: 1,
              color: PrimaryColor,
            ),
          ),
          child: Text(
            'Golden Retriever = 0.78',
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          width: 260,
          height: 70,
        ),
      ],
    );
  }
}
