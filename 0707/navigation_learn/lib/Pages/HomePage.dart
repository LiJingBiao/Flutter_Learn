import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text('跳到首页详情'),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomeDetailPage()));
          },
        ),
      ),
    );
  }
}

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页详情'),
      ),
      body: Container(
        child: FloatingActionButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
