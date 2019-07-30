import 'dart:async';
import 'dart:convert';
import 'package:flutter_trip/models/home_data.dart';
import 'package:http/http.dart' as http;

class HomeDao {
  static Future<HomeModel> fetch() async {
    http.Response response = await http
        .get('http://www.devio.org/io/flutter_app/json/home_page.json');
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      Map<String, dynamic> json =
          jsonDecode(utf8decoder.convert(response.bodyBytes));
      return HomeModel.fromJson(json);
    }else {
      throw Exception('返回错误');
    }
  }
}
