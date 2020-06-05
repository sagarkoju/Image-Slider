import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  double _volumne= 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us")
      ),
      body: Column(
        children:<Widget>[
          IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase Volume by 10',
          onPressed: (){
            setState(() {
              _volumne+= 10;
            });
          },
          

          ),
          Text("Volume: $_volumne")
        ]
      ),
    );
  }
}