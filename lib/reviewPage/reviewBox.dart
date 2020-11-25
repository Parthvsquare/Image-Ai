import 'package:flutter/material.dart';
import '../constant.dart';
import 'reviewItem.dart';

class ReviewBox extends StatefulWidget {
  @override
  _ReviewBoxState createState() => _ReviewBoxState();
}

class _ReviewBoxState extends State<ReviewBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 50),
      child: ReviewItem(),
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
//this widget contains only the outer boundary
