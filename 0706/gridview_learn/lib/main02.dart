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

  List<Widget> _getDataList() {
    var list = listData.map((value) {
      return Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            value['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(15),
      childAspectRatio: 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      crossAxisCount: 3,
      children: this._getDataList(),
    );
  }
}
