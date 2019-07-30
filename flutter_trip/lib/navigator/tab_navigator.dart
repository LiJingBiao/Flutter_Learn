import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/my_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  TabNavigator({Key key}) : super(key: key);

  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  var _defalutColor = Colors.grey;
  var _selectedColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(
              '首页',
              style: TextStyle(
                color: _currentIndex == 0 ? _selectedColor : _defalutColor,
              ),
            ),
            icon: Icon(
              Icons.home,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.home,
              color: _selectedColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '搜索',
              style: TextStyle(
                color: _currentIndex == 1 ? _selectedColor : _defalutColor,
              ),
            ),
            icon: Icon(
              Icons.search,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.search,
              color: _selectedColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '旅拍',
              style: TextStyle(
                color: _currentIndex == 2 ? _selectedColor : _defalutColor,
              ),
            ),
            icon: Icon(
              Icons.camera_alt,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.camera_alt,
              color: _selectedColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的',
              style: TextStyle(
                color: _currentIndex == 3 ? _selectedColor : _defalutColor,
              ),
            ),
            icon: Icon(
              Icons.account_circle,
              color: _defalutColor,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              color: _selectedColor,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
    );
  }
}
