import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: ListView(
        children: <Widget>[
          ListTile(
            trailing: Image.network(
                'https://img-blog.csdnimg.cn/20190221114447926.gif'),
            leading: Image.network(
                'https://upload-images.jianshu.io/upload_images/4980690-8c67f899dd90af78.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp'),
            title: Text('Flutter教程_2019年最新Flutter'),
            subtitle: Text('零基础入门实战教程（每周更新5讲左右）'),
          )
        ],
      ),
    );
  }
}
