import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CommonModel {
  final title;
  final icon;
  CommonModel({this.title, this.icon});
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(title: json['title'], icon: json['icon']);
  }
}

Future<CommonModel> fetchData() async {
  final response = await http
      .get('http://www.devio.org/io/flutter_app/json/test_common_model.json');
  Utf8Decoder utf8Decoder = Utf8Decoder();
  try {
    final data = jsonDecode(utf8Decoder.convert(response.bodyBytes));
    print(data.toString());
    return CommonModel.fromJson(data);
  } catch (e) {
    return e;
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    fetchData();
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: FutureBuilder(
        future: fetchData(),
        initialData: null,
        builder: (BuildContext context, AsyncSnapshot<CommonModel> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('input New Url');
              break;
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active:
              return Text('active');
              break;
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Text(
                  'has error',
                  style: TextStyle(color: Colors.red),
                );
              } else {
                return Text(snapshot.data.toString());
              }
              break;
            default:
          }
        },
      ),
    );
  }
}
