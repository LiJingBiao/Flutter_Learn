import 'package:flutter/material.dart';


class HomeDetailPage extends StatelessWidget {
  Map arguments;
  HomeDetailPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Center(
            //this.arguments['pageName']!=null?this.arguments['pageName']:
            child: Text(
                this.arguments != null ? this.arguments['pageName'] : 'fuck'),
          ),
          RaisedButton(
            child: Text('搜神记'),
            onPressed: (){
              Navigator.pushNamed(context, '/homeThird');
            },
          ),
        ],
      ),
    );
  }
}
