import 'dart:convert';

class Model1 {
  String icon;
  String title;
  Model1.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
  }
}

void testModel(){
  Map<String,String> json = {"icon":'home_icon','title':'搜狗输入法'};
  Model1 model = Model1.fromJson(json);
  print(model.title);
}