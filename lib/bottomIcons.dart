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
        height: MediaQuery.of(context).size.height * .50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Authors"),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.cancel, color: Colors.black, size: 25, ), 
                    onPressed: (){
                      Navigator.of(context).pop();
                    })
                ],
              ),
            ],
          ),
        )
      );
    });
    }
}
