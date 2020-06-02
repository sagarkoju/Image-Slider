import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imagecaraousel = new Container(
      height: 200.0,

      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/s.png"),
          AssetImage("assets/sa.jpg"),
          AssetImage("assets/sag.png"),
          AssetImage("assets/saga.png"),
          AssetImage("assets/sagar.png"),
          AssetImage("assets/sagar1.png"),
     ],
     autoplay: true,
     animationCurve: Curves.fastOutSlowIn,
     animationDuration: Duration(microseconds: 300),
     dotSize: 14.0,
     indicatorBgPadding: 20.0,
        
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Slider")
      ),
      body: Column(
      children: <Widget>[
        imagecaraousel
      ],),
    );
  }
}