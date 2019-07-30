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
        child: Image.network(
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562257289926&di=9fe3b65008bd23a0d7aa815c00427caa&imgtype=0&src=http%3A%2F%2Fpic37.nipic.com%2F20140110%2F8821914_135241051000_2.jpg',
          width:10.0,
          height:10.0,
          //repeat: ImageRepeat.repeatY,
          fit: BoxFit.contain,
          alignment: Alignment.bottomLeft,
        ),
        width: 300.0,
        height: 800.0,
        color: Colors.yellow,
      ),
    );
  }
}