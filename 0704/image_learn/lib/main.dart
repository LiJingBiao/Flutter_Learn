import 'package:flutter/material.dart';


void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('风景'),),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(       

        child:Image.asset('images/a.jpeg',

          fit: BoxFit.cover,
        ),

        height: 300,
        width: 300,
        
      )
    );
  }
}