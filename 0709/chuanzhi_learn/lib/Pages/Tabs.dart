import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'SettingsPage.dart';
import 'SearchPage.dart';


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pages = [HomePage(),SearchPage(),SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //unselectedItemColor: Colors.pink,
        //backgroundColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
          print(index);
        },
        currentIndex: this._currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('搜索'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
          ),
        ],
      ),
      body: this._pages[this._currentIndex],
    );
  }
}

