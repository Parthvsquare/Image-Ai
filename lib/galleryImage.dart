import 'constant.dart';
import 'package:flutter/material.dart';

class GalleryImage extends StatelessWidget {
  final galleryImage;
  GalleryImage(this.galleryImage);

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
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          height: 400,
          width: double.infinity,
          padding: EdgeInsets.all(50),
          child: Image.file(
            galleryImage,
            fit: BoxFit.contain,
          ),
          decoration: BoxDecoration(
              // border: Border.all(
              //   width: 1,
              //   color: PrimaryColor,
              // ),
              ),
        ),
      ],
    );
  }
}
