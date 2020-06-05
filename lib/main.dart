
import 'package:app9/model/about.dart';
import 'package:app9/model/cart.dart';
import 'package:app9/model/home.dart';
import 'package:app9/model/profile.dart';
import 'package:app9/model/rate.dart';
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
           onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
           },
           leading: Icon(Icons.shopping_cart),
           title: Text("Cart"),
         ),
         ListTile(
           onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
           },
           leading: Icon(Icons.info),
           title: Text("About"),
         ),
         ListTile(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Rate()));
           },
           leading: Icon(Icons.star),
           title: Text("Rate"),
         )
      ],)
      ),
    body: Column(
      children:<Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
            padding: EdgeInsets.all(4.0),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: (){
              print("Press me ");
            },
            child: Text("Click Me") ,
            ),
        ),

     SizedBox(
       width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
            padding: EdgeInsets.all(4.0),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: (){
              print("Press me ");
            },
            child: Text("Click Me") ,
            ),
     ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
          child: OutlineButton(
            color: Colors.red,
            highlightColor: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            focusColor: Colors.greenAccent,
          padding: EdgeInsets.all(4.0),
          
          textColor: Colors.blue,
          onPressed: (){
            print("Press me ");
          },
          child: Text("Click Me") ,
          ),
          ),
         SizedBox(
           width: MediaQuery.of(context).size.width,
                    child: FloatingActionButton(
              onPressed: (){},
              
              child: Icon(Icons.add),
               focusColor: Colors.red,
               elevation: 4.0,
              backgroundColor: Colors.green,
             
             ),
         ),


      ]
    ),
    );
  }
}