import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/test_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//https://javiercbk.github.io/json_to_dart/
//https://caijinglong.github.io/json2dart/index.html

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  _SearchPageState createState() => _SearchPageState();
}

class CommonModel {
  final String icon;
  final String title;
  final String url;
  final String stateBarColor;
  final bool hideAppBar;
  CommonModel(
      {this.icon, this.title, this.url, this.stateBarColor, this.hideAppBar});

  

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json["icon"],
      title: json['title'],
      url: json['url'],
      stateBarColor: json['stateBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}

class _SearchPageState extends State<SearchPage> {
  String _showResult = '';
  Future<CommonModel> fetchPost() async {
    final response = await http
        .get('http://www.devio.org/io/flutter_app/json/test_common_model.json');
    Utf8Decoder decode = Utf8Decoder();
    String jsonStr = decode.convert(response.bodyBytes);
    final result = json.decode(jsonStr);
    print(result);
    CommonModel model = CommonModel.fromJson(result);
    return model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Column(
        children: <Widget>[
          InkWell(
            onTap: (){ fetchPost().then((CommonModel value){
                print(value.title);
                setState(() {
                  _showResult = '请求结果:\ntitle:${value.title}\nurl:${value.url}';
                });
              });
            },
            child: Text('点我'),
          ),
          Text(_showResult),
          RaisedButton(
            child: Text('测试'),
            onPressed: (){
              testModel();
            },
          ),
        ],
      ),
    );
  }
}
