import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: Column(
           children: <Widget>[
             ImageAsset1(),
             Row(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(right: 50.0, left: 30.0),
                   child: Text("Name ",
                     style: TextStyle(
                       fontSize: 30.0,
                       fontFamily: 'CrimsonText',
                       fontWeight: FontWeight.w300,
                     ),),
                 ),
                 Container(
                   margin: EdgeInsets.only(right: 30.0, left: 60.0),
                   child: Text("Price ",
                     style: TextStyle(
                       fontSize: 30.0,
                       fontFamily: 'CrimsonText',
                       fontWeight: FontWeight.w300,
                     ),),
                 ),
               ],
             ),
             Row(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(right: 50.0, left: 30.0),
                   child: Text("Acoustic \n Electric \n Bass",
                     style: TextStyle(
                       fontSize: 20.0,
                       fontFamily: 'CrimsonText',
                       fontWeight: FontWeight.w300,
                     ),),
                 ),
                 Container(
                   margin: EdgeInsets.only(right: 30.0, left: 60.0),
                   child: Text("5000 \n 6000\n 4000",
                     style: TextStyle(
                       fontSize: 20.0,
                       fontFamily: 'CrimsonText',
                       fontWeight: FontWeight.w300,
                     ),),
                 ),
               ],
             ),
                Button(),

           ],
          ),
    ),

    );
  }

}
class ImageAsset1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/1st.jpeg');
    Image image = Image(image: assetImage, width: 300.0, height: 300.0,);
    return Container(child: image,);
  }
}

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200.0,
      height: 70.0,
      margin: EdgeInsets.all(40.0),
      child: RaisedButton(
        color: Colors.black26,
        onPressed: (){
          action(context);
        },
        elevation: 6.0,
        child: Text("Buy Now", style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),),
      ),
    );

  }
  void action(BuildContext context){
    var alertDialog = AlertDialog(
      backgroundColor: Colors.grey,
      title: Text("Guitar Booked Successfully",
                  style: TextStyle(
                      fontFamily: 'CrimsonText'
      ),),
      content: Text("Have a nice day!",
        style: TextStyle(
            fontFamily: 'CrimsonText',

        ),),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog);

  }
}