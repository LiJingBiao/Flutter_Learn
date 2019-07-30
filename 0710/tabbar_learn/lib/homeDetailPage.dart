import 'package:flutter/material.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(text: '中国',icon: Icon(Icons.hdr_strong),),
            Tab(text: '美国',),
            Tab(text: '美国',),
            Tab(text: '美国',),
            Tab(text: '中国',),
            Tab(text: '美国',),
          ],
        ),
        title: Text('详情页'),
      ),
      body: TabBarView(
        children: <Widget>[
          ListView.builder(
          itemCount: 5,
          //itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('中国'),
          );
         },
        ),
        ListView.builder(
          itemCount: 5,
          //itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('美国'),
          );
         },
        ),
        ListView.builder(
          itemCount: 5,
          //itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('美国'),
          );
         },
        ),
        ListView.builder(
          itemCount: 5,
          //itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('美国'),
          );
         },
        ),
        ListView.builder(
          itemCount: 5,
          //itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('美国'),
          );
         },
        ),
        ListView.builder(
          itemCount: 5,
          //itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('美国'),
          );
         },
        ),
        ],
      ),

    ),
    );
  }
}