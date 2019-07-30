import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 100,
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Text('内容1'),
                Image.network('https://www.itying.com/images/flutter/1.png'),
              ],
            ),
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
/**
 * 
 * child: ListView(
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 100,
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Text('内容1'),
                Image.network('https://www.itying.com/images/flutter/1.png'),
              ],
            ),
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
          Container(           
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(           
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
 */
