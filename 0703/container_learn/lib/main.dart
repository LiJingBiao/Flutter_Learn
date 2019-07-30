import 'package:flutter/material.dart';



void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
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
            child: Text(
            'hello',
            //overflow: TextOverflow.fade,
            textAlign: TextAlign.left,
            //maxLines: 2,
            style: TextStyle(
              fontSize: 30.0,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              letterSpacing: 2.0,
            ),
            ),
            width: 300.0,
            height: 300.0,
            alignment: Alignment.topRight,
            padding: EdgeInsets.fromLTRB(0, 50, 50, 0),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
              border: Border.all(
                color: Colors.red,
                width: 2.0,
              )
            ),
          ),
        );
  }
}

