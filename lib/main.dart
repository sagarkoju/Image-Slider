
import 'package:app9/model/home.dart';
import 'package:app9/model/profile.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Drawer in Flutter")
      ),
      drawer: Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
        accountName: Text("Sagar Koju"),
         accountEmail: Text("Sagarkoju5@gmail.com"),
         currentAccountPicture: GestureDetector(
           child: CircleAvatar(
            backgroundImage: AssetImage("assets/s.png"),
            backgroundColor: Colors.teal ,)
         ),
         ),
         ListTile(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
           },
          
           leading: Icon(Icons.home),
           title: Text("Home"),
         ),
         ListTile(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
           },
           leading: Icon(Icons.person),
           title: Text("Profile"),
         ),
         ListTile(
           leading: Icon(Icons.shopping_cart),
           title: Text("Cart"),
         ),
         ListTile(
           leading: Icon(Icons.info),
           title: Text("About"),
         ),
         ListTile(
           leading: Icon(Icons.star),
           title: Text("Rate"),
         )
      ],)
      ),
    );
  }
}