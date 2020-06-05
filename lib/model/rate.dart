import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rate Us")),
      body: Center(child: Text("Press the Button with the label Below")),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){

      },
      label: Text("Approve"),
      icon: Icon(Icons.thumb_up),
      backgroundColor: Colors.pink, 
      )
      
    );
  }
}
