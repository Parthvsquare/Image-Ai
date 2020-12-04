import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class aList extends StatelessWidget {
  final String name;
  final String age;
  aList(this.name, this.age);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 200,
      child: Text(
        name,
        //idhar tensor flow dalna he teko
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
