import 'package:flutter/material.dart';
import '../constant.dart';
import 'reviewitemrow.dart';
//import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';

class ReviewItemS extends StatefulWidget {
  final File results;
  ReviewItemS(this.results);
  @override
  _ReviewItemSState createState() => _ReviewItemSState();
}

class _ReviewItemSState extends State<ReviewItemS> {
  List theListOfOutput;
  String theConfidence = '';
  String theName = '';
  String theNumbers = '';

  loadMyModel() async {
    var resultant = await Tflite.loadModel(
      model: "../assets/mobilenet_v1_1.0_224.tflite",
      labels: "../assets/mobilenet_v1_1.0_224.txt",
    );
    print("Result after loading model: $resultant");
  }

  applyModelOnImage(File file) async {
    var res = await Tflite.runModelOnImage(
      path: widget.results.path,
      numResults: 3,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(
      () {
        theListOfOutput = res;
        String str = theListOfOutput[0]["label"];
        theName = str.substring(2);
        theConfidence = theListOfOutput != null
            ? (theListOfOutput[0]['confidence'] * 100.0)
                    .toString()
                    .substring(0, 2) +
                "%"
            : "a problem occured";
      },
    );
  }

  @override
  void initState() {
    super.initState();
    loadMyModel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Name: $theName and the Confidence $theConfidence"),
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
          child: ReviewItemRow(theName, theConfidence),
          height: 50,
        ),
        // Container(
        //   margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       width: 1,
        //       color: PrimaryColor,
        //     ),
        //   ),
        //   child: ReviewItemRow(),
        //   height: 50,
        // ),
      ],
    );
  }
}
