import 'package:flutter/material.dart';
import '../constant.dart';
import 'reviewItem.dart';

class ReviewBox extends StatelessWidget {
  // final galleryImage;
  // ReviewBox(this.galleryImage);
  final String name;
  final String confidence;
  ReviewBox(this.name, this.confidence);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 50),
      child: ReviewItem(name, confidence),
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
