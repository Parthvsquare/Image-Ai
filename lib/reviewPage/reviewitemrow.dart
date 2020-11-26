import 'package:flutter/material.dart';
import '../constant.dart';

class ReviewItemRow extends StatelessWidget {
  final List results;
  ReviewItemRow(this.results);
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
            "${results}",
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
            '0.78',
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
