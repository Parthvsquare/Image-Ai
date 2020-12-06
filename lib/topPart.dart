import 'constant.dart';
import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, left: 30),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              // border: Border.all(
              //   width: 1,
              //   color: PrimaryColor,
              // ),
              ),
          child: Text(
            'Image AI',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          height: 400,
          width: double.infinity,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            // border: Border.all(
            //   width: 1,
            //   color: PrimaryColor,
            // ),
            image: DecorationImage(
              image: AssetImage("assets/Object-detection.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
