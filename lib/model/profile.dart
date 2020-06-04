import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile")
      ),
      body: Center(child: Text("Welcome to Sagar Koju", style: TextStyle(color: Colors.blue, fontSize: 40.0, fontWeight: FontWeight.bold))),
    );
  }
}