import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 70,
          margin: EdgeInsets.only(left: 20),
          child: IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.menu_rounded, color: Colors.white, size: 30),
            onPressed: () => (() {
              //somthing need to be written
            }),
          ),
        ),
        Container(
          height: 70,
          margin: EdgeInsets.only(right: 20),
          child: IconButton(
            alignment: Alignment.centerRight,
            icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
            onPressed: () => (() {
              //somthing need to be written
            }),
          ),
        ),
      ],
    );
  }
}
