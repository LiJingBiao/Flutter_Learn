import 'package:flutter/material.dart';
import 'homeDetailPage.dart';
import 'TabPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(child: Text('跳转到详情'), onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return TabBarControllerPage();
                }
              ));
            }),
          ),
          
        ],
      ),
    );
  }
}
