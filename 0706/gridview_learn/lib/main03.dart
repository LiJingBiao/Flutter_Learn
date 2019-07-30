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
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.grey,
        )),
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 10,),
            Text(
              value['title'],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
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
      mainAxisSpacing: 15,
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      children: this._getDataList(),
    );
  }
}
