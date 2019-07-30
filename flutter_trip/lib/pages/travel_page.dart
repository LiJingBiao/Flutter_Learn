import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class TravelPage extends StatefulWidget {
  TravelPage({Key key}) : super(key: key);

  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  test() async {
    int result = await Future.delayed(Duration(seconds: 2), () {
      return 123;
    });
    print(DateTime.now().toString());
    print(result);
  }

  test2() async {
    var random = Random();
    Future.delayed(Duration(seconds: 2), () {
      if (random.nextBool()) {
        return 100;
      }
      throw 'boom';
    }).then(print).catchError(print).whenComplete(() {
      print('Done');
    });
  }

  testTimeOutFuture() async {
    Future.delayed(Duration(seconds: 1), () {
      return Future.value(121212);
    }).timeout(Duration(seconds: 2)).then(print).catchError(print);
  }

  @override
  Widget build(BuildContext context) {
    //print(DateTime.now().toString());
    testTimeOutFuture();
    //print(DateTime.now().toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('旅拍'),
      ),
      body: Center(
        child: Text('旅拍'),
      ),
    );
  }
}
