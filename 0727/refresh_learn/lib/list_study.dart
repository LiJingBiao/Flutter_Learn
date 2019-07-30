import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:refresh_learn/models/city_model.dart';

class HomePage1 extends StatefulWidget {
  HomePage1({Key key}) : super(key: key);

  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<Info> _cityInfos = <Info>[];
  void loadData() async {
    String jsonStr =
        await rootBundle.loadString('resource/city.json', cache: false);
    var json = jsonDecode(jsonStr);
    //json = json['info'];
    Citys cityModel = Citys.fromJson(json);
    setState(() {
      _cityInfos = cityModel.info;
    });
  }

  List<Widget> _buildList() {
    return _cityInfos.map((cityInfo) => _item(cityInfo)).toList();
  }

  Widget _item(Info cityInfo) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(right: 5),
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
        onPressed: loadData,
      ),
      body: Container(
        height: 100,
        child: ListView(
        scrollDirection: Axis.horizontal,
        children: _buildList(),
      ),
      ),
    );
  }
}
