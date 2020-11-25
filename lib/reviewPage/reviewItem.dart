import 'package:flutter/material.dart';
import '../constant.dart';
import 'reviewitemrow.dart';

class ReviewItem extends StatefulWidget {
  @override
  _ReviewItemState createState() => _ReviewItemState();
}

class _ReviewItemState extends State<ReviewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 15, left: 15, bottom: 5),
          child: Text(
            'Review',
            style: TextStyle(fontSize: 20),
          ),
        ),
//----------------------------------This is the line----------------------------------//
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          height: 1,
          width: double.infinity,
          color: PrimaryColor,
        ),
//----------------------------------Label of the table----------------------------------//
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 40, bottom: 5),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 60, bottom: 5),
              child: Text(
                'Percentage',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
//----------------------------------This is the line----------------------------------//
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
          height: 1,
          width: double.infinity,
          color: PrimaryColor,
        ),
//----------------------------------Niche wale repeat kar----------------------------------//
        Container(
          margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: PrimaryColor,
            ),
          ),
          child: ReviewItemRow(),
          height: 50,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: PrimaryColor,
            ),
          ),
          child: ReviewItemRow(),
          height: 50,
        ),
      ],
    );
  }
}
//this widget contains name of table lines and the box for table content
