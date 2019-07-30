import 'package:flutter/material.dart';
import 'res/listData.dart';
//import 'package:flutter/painting.dart';
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
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (BuildContext context, int index) {
      return Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.network(listData[index]['imageUrl'],fit: BoxFit.cover,),
          ),
          ListTile(
            //leading: ClipOval(child: Image.network(listData[index]['imageUrl']),),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(listData[index]['imageUrl']),
            ),
            title: Text(listData[index]['title'],style: TextStyle(fontSize: 22, color: Colors.black),),
            subtitle: Text(listData[index]['description'],style: TextStyle(fontSize: 17, color: Colors.grey),maxLines: 2,overflow: TextOverflow.ellipsis,),
          ),
          
        ],
      ),
      );
     },
    );
  }
}
