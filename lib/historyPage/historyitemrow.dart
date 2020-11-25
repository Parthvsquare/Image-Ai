import 'package:flutter/material.dart';
import '../constant.dart';

class HistoryItemsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          //margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: PrimaryColor, spreadRadius: 1),
            ],
            image: DecorationImage(
              image: AssetImage("assets/Object-detection.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          //margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 10),
          decoration: BoxDecoration(
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
          width: 250,
          height: 70,
        ),
      ],
    );
  }
}
