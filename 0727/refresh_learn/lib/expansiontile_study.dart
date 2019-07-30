import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:refresh_learn/models/city_model.dart';

class HomePage2 extends StatefulWidget {
  HomePage2({Key key}) : super(key: key);

  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
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
    return ExpansionTile(
      leading: Icon(Icons.location_city),
      title: Text(cityInfo.areaname),
      children: cityInfo.childList
          .map((ChildList childCity) => _subItem(childCity))
          .toList(),
    );
/*
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
    */
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: _buildList(),
      ),
    );
  }
}
