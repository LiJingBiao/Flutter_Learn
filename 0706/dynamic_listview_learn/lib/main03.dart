import 'package:flutter/material.dart';

import 'res/listData.dart';


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
    var list = listData.map((value) {
      return ListTile(
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        title:Text(value['title']),
        leading: Image.network(value['imageUrl']),
        subtitle: Text(value['author']),
      );
    });
    return list.toList();    
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
      children: this._getData(),
    );
  }
}
