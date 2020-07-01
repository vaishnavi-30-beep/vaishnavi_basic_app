import 'package:flutter/material.dart';
import './Demo.dart';

void main() {
  runApp(GuitarPage());

}
class GuitarPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner : false ,
      title: "Guitar Application",
      home: Scaffold(

        appBar: AppBar(
            title: Text(
        "Guitar Collection",
        textDirection: TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'CrimsonText',
                fontSize: 25.0,
              ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Demo(),
      ),
    );
  }

}