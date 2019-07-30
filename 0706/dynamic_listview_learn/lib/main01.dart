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

  List<Widget> _getData() {
    return [
      ListTile(
        title: Text('我是列表'),
      ),
      ListTile(
        title: Text('我是列表'),
      ),
      ListTile(
        title: Text('我是列表'),
      ),
      ListTile(
        title: Text('我是列表'),
      ),
      ListTile(
        title: Text('我是列表'),
      ),
      ListTile(
        title: Text('我是列表'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
