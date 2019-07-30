import 'package:flutter/material.dart';
import 'package:flutter_trip/models/home_data.dart';
import 'package:flutter_trip/pages/webview.dart';

class LocalNav extends StatelessWidget {
  final List<CommonModel> data;
  const LocalNav({Key key, @required this.data}) : super(key: key);
  List<Widget> _localNavItem(BuildContext context) {
    return data.map((CommonModel model) {
      return GestureDetector(
        onTap: () {
          print('点击了');
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => WebView(url: model.url, statusBarColor: model.statusBarColor, hideAppBar: model.hideAppBar,)
          ));
        },
        child: Column(
          children: <Widget>[
            Image.network(
              model.icon,
              width: 32,
              height: 32,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              model.title,
              style: (TextStyle(color: Colors.black, fontSize: 12)),
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      alignment: Alignment.bottomCenter,
      height: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _localNavItem(context),
      ),
    );
  }
}
