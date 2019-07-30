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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
      crossAxisCount: 2,
      //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
      ],
    ),
    );
  }
}
