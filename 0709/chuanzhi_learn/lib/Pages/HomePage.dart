import 'package:flutter/material.dart';
import './HomeDetail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text('data'),
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/homeDetail',arguments: {'pageName':'我是首页2'});
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context){
            //       return HomeDetailPage();
            //     }
            //   )
            // );
          },
        ),
        SizedBox(height: 20), 
      ],
    );
  }
}
