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
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listData = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.listData.map((value){
            return AspectRatio(
              aspectRatio: 12,
              child: Center(child: Chip(label:Text(value)),),
            );
          }).toList(),
        ),
        RaisedButton(
          child: Text('我是按钮'),
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            setState(() {
              listData.add('我是第${this.listData.length}次点击');
            });
          },
        ),
      ],
    );
  }
}

class $ {
}