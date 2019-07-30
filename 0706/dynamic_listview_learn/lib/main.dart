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
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        title:Text(value['title']),
        leading: Image.network(value['imageUrl']),
        subtitle: Text(value['author']),
      );
    });
    return list.toList();    
  }

  Widget _getListData(BuildContext context, int index) {
    return Container(
      color: index%2 != 1? Colors.yellow: Colors.blue,
      width: 100,
    );
    // return ListTile(
    //     contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
    //     title:Text(listData[index]['title']),
    //     leading: Image.network(listData[index]['imageUrl']),
    //     subtitle: Text(listData[index]['author']),
    //   );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.yellow,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listData.length,
      itemBuilder: this._getListData,
    ),
    );
  }
}
