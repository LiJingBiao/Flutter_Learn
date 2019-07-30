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
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 30,
              top: 30,
              child: Text('One',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
            ),
            Align(
              alignment: Alignment(-1, -1),
              child: Text('Two',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
