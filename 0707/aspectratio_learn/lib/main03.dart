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
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
      return Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
        children: <Widget>[
          ListTile(
            title: Text('张三',style: TextStyle(fontSize: 22, color: Colors.black),),
            subtitle: Text('高级软件工程师',style: TextStyle(fontSize: 17, color: Colors.grey),),
          ),
          ListTile(
            title: Text('电话：17600108816',style: TextStyle(fontSize: 20, color: Colors.black),),
          ),
          ListTile(
            title: Text('地址：北京市顺义区',style: TextStyle(fontSize: 20, color: Colors.black),),
            
          ),
        ],
      ),
      );
     },
    );
  }
}
