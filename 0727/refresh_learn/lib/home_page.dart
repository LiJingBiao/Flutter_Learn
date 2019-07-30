import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:refresh_learn/models/city_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();
  List<Info> _cityInfos = <Info>[];
  @override
  void initState() {
    _controller.addListener(() {
      if (_controller.position.pixels ==
          _controller.position.maxScrollExtent) {
            setState(() {
              List<Info> list = List<Info>.from(_cityInfos);
              _cityInfos.addAll(list);
            });
            print('已经到底了');
          }
    });
    super.initState();
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<Null> loadData() async {
    if (_cityInfos.length != 0) {
      return Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _cityInfos = _cityInfos.reversed.toList();
        });
        return Future.value(null);
      });
    }
    String jsonStr =
        await rootBundle.loadString('resource/city.json', cache: false);
    var json = jsonDecode(jsonStr);
    //json = json['info'];
    Citys cityModel = Citys.fromJson(json);

    return Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _cityInfos = cityModel.info;
      });
      return Future.value(null);
    });
  }

  List<Widget> _buildList() {
    return _cityInfos.map((cityInfo) => _item(cityInfo)).toList();
  }

  Widget _subItem(ChildList childCity) {
    return FractionallySizedBox(
      alignment: Alignment.centerRight,
      widthFactor: 0.5,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(
          childCity.areaname,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _item(Info cityInfo) {
    /*
    return ExpansionTile(
      leading: Icon(Icons.location_city),
      title: Text(cityInfo.areaname),
      children: cityInfo.childList
          .map((ChildList childCity) => _subItem(childCity))
          .toList(),
    );
  */
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.teal),
      child: Text(
        cityInfo.areaname,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){

        },
      ),
      body: RefreshIndicator(
        onRefresh: loadData,
        child: GridView.count(
          physics: AlwaysScrollableScrollPhysics(),
          controller: _controller,
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          childAspectRatio: 1 / 1,
          children: _buildList(),
        ),
      ),
    );
  }
}
/**
 * 
 * 
 * 
 * 
 */