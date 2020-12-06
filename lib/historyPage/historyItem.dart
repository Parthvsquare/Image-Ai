import 'package:flutter/material.dart';
import '../constant.dart';
import 'historyitemrow.dart';

class HistoryItems extends StatefulWidget {
  @override
  _HistoryItemsState createState() => _HistoryItemsState();
}

class _HistoryItemsState extends State<HistoryItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
//----------------------------------The title of the table----------------------------------//
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 15, left: 15, bottom: 5),
          child: Text(
            'History',
            style: TextStyle(fontSize: 20),
          ),
        ),
//----------------------------------This is used to create a line----------------------------------//
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          height: 1,
          width: double.infinity,
          color: PrimaryColor,
        ),
//----------------------------------Niche wale repeat kar----------------------------------//
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: HistoryItemsRow('assets/sorrel.jpg', 'Sorrel = 71%'),
        ),
        Container(
          child: HistoryItemsRow('assets/cat.jpg', 'Tiger Cat = 86%'),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Container(
          child: HistoryItemsRow('assets/norfok.jpg', 'Norfolk terrier = 96%'),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Container(
          child:
              HistoryItemsRow('assets/labpup.jpg', 'Labrador retriever = 99%'),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Container(
          child:
              HistoryItemsRow('assets/golderret.jpg', 'Golden Retriever = 96%'),
          margin: EdgeInsets.only(bottom: 10),
        ),
      ],
    );
  }
}
