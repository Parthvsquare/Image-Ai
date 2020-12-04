import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';
//----------------------------------file imports----------------------------------//
import 'constant.dart';
import './historyPage/history.dart';
import 'topPart.dart';
import 'bottomIcons.dart';
import 'galleryImage.dart';
import './reviewPage/reviewBox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Test1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  File theImageLoc;
  List theListOfOutput;
  String theConfidence = '';
  String theName = '';
  String theNumbers = '';

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      theImageLoc = image;
    });
    print(theImageLoc);
  }

//----------------------------------This is the function need for tensorflow---------------------------------//
  loadMyModel() async {
    var resultant = await Tflite.loadModel(
      model: "assets/mobilenet_v1_1.0_224.tflite",
      labels: "assets/mobilenet_v1_1.0_224.txt",
    );
    print("Result after loading model: $resultant");
  }

  applyModelOnImage(File file) async {
    var res = await Tflite.runModelOnImage(
      path: theImageLoc.path,
      numResults: 3,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      theListOfOutput = res;
      String str = theListOfOutput[0]["label"];
      theName = str.substring(2);
      theConfidence = theListOfOutput != null
          ? (theListOfOutput[0]['confidence'] * 100.0)
                  .toString()
                  .substring(0, 2) +
              "%"
          : "this is shit";
    });
  }

  @override
  void initState() {
    super.initState();
    loadMyModel();
  }

//----------------------------------The function needed to make noti bar black----------------------------------//
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
//----------------------------------To make app bar transparent----------------------------------//
      extendBodyBehindAppBar: true,
      //status bar me ghusna he to true rakh, nahi to false
      appBar: PreferredSize(
        //alternative way to make statusbar icon light or dark
        preferredSize: Size.zero,
        //Size.zero for not to show appbar
        //set your own hight for appbar.
        child: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          //Brightness.light = Dark icon
          //Brghtness.dark = Light icon
          backgroundColor: Colors.transparent,
        ),
      ),
//----------------------------------The shitty middle part----------------------------------//
      body: SingleChildScrollView(
        child: Column(
          children: [
            theImageLoc == null ? TopPart() : GalleryImage(theImageLoc),
            theImageLoc == null
                ? History()
                :
                //ReviewBox(theName, theConfidence)
                Text("Name: $theName and the Confidence $theConfidence"),
          ],
        ),
      ),
//----------------------------------Bottom grey color bar----------------------------------//
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: PrimaryColor,
        child: BottomIcons(),
      ),
//----------------------------------Bottom grey color button----------------------------------//
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: getImage,
            child: Icon(
              Icons.add_rounded,
              color: PrimaryAssentColor,
              size: 50,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
//----------------------------------To make the button floating----------------------------------//
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
