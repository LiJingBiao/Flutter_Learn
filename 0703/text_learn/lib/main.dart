import 'package:flutter/material.dart';

void main() {
    runApp(
      new MyApp()
    );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题',style: TextStyle(color: Colors.white),),
        ),
        body: HomeContent(),
      ),
      title: 'root',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

} 

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
        '首页',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.green
          ),
        ),
      );
  }
  
}

