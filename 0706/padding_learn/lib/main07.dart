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
//Image.network(

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 400,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: 150.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://tpc.googlesyndication.com/simgad/3869207765180876672?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qllfczscPSI4z0b5Yb-IL7-EKnA3Q',
                    //color: Colors.yellow,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.network(
                          'https://tpc.googlesyndication.com/simgad/3869207765180876672?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qllfczscPSI4z0b5Yb-IL7-EKnA3Q',
                          //color: Colors.yellow,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Image.network(
                          'https://tpc.googlesyndication.com/simgad/3869207765180876672?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qllfczscPSI4z0b5Yb-IL7-EKnA3Q',
                          //color: Colors.yellow,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Container(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
