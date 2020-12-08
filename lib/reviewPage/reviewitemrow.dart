import 'package:flutter/material.dart';

class ReviewItemRow extends StatelessWidget {
  final name;
  final confidence;
  ReviewItemRow(this.name, this.confidence);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
//----------------------------------This is the Name of that character ----------------------------------//
        Container(
          margin: EdgeInsets.only(left: 10),
          width: 200,
          child: Text(
            '$name',
            //idhar tensor flow dalna he teko
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(fontSize: 14),
          ),
        ),
//----------------------------------This is the percentage part----------------------------------//
        Container(
          margin: EdgeInsets.only(right: 60),
          child: Text(
            '$confidence',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          //height: 70,
        ),
      ],
    );
  }
}
//this widget contains table of contents
