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

  Widget _getDataList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Colors.grey,
      )),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(
            height: 10,
          ),
          Text(
            listData[index]['title'],
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemCount: listData.length,
      itemBuilder: this._getDataList,
    );
  }
}
/**
 * GridView.count(
      padding: EdgeInsets.all(15),
      childAspectRatio: 1,
      mainAxisSpacing: 15,
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      children: this._getDataList(),
    )
 */
