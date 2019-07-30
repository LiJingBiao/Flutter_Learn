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
    return ListView(
      children: <Widget>[
        Image.network(
          'https://github.com/Alexisvt/flutter-snippets/raw/master/assets/flutter-snippet-sample.gif',
          height: 60,
          fit: BoxFit.cover,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://github.com/Alexisvt/flutter-snippets/raw/master/assets/flutter-snippet-sample.gif',
          height: 60,
          fit: BoxFit.cover,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://github.com/Alexisvt/flutter-snippets/raw/master/assets/flutter-snippet-sample.gif',
          height: 60,
          fit: BoxFit.cover,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://github.com/Alexisvt/flutter-snippets/raw/master/assets/flutter-snippet-sample.gif',
          height: 60,
          fit: BoxFit.cover,
        ),
        Container(
          height: 50,
          color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
