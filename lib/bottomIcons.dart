// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test1/constant.dart';

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
            icon: Icon(Icons.info_outline_rounded, color: Colors.white, size: 30),
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
            onPressed: () {
             _popupModalBottomSheet(context);
            }),
          ),
      ],
    );
  }
  //POPUP
  void _popupModalBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (BuildContext bc){
      return Container(
        height: MediaQuery.of(context).size.height * .30,
        color: PrimaryColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Authors',
                  style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.cancel, color: Colors.white, size: 25, ), 
                    onPressed: (){
                      Navigator.of(context).pop();
                    })
                ],
              ),
              Divider(
                height: 10,
                color: Colors.white,
              ),
              Row(
                children: <Widget>[
                  Text('Parth Varanase',
                  style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,),
                  ),
                  Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
	                  shape: BoxShape.circle,
	                  image: DecorationImage(
                      image: AssetImage('assets/Parth.png'),
	                  fit: BoxFit.fill
                	  ),
                  ),
                  ),
                ],),
              Row(
                children: <Widget>[
                  Text('Dhiren Boricha',
                  style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w400,),
                  ),
                   Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
	                  shape: BoxShape.circle,
	                  image: DecorationImage(
                      image: AssetImage('assets/Dhiren.png'),
	                  fit: BoxFit.fill
                	  ),
                  ),
                  ),
                ],),
               Row(
                children: <Widget>[
                  Text('Suman Sasmal',
                  style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w400,),
                  ),
                   Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
	                  shape: BoxShape.circle,
	                  image: DecorationImage(
                      image: AssetImage('assets/Suman.png'),
	                  fit: BoxFit.fill
                	  ),
                  ),
                  ),
                ],),    
            ],
          ),
        )
      );
    });
    }
}
