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
      height: 800,
      width: 400,
      color: Colors.pink,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconContainer(Icons.home,color: Colors.yellow,size: 50.0,),
        IconContainer(Icons.search,color: Colors.blue,size: 50.0,),
        IconContainer(Icons.security,color: Colors.orange,size: 50.0,),
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
        child: Icon(this.icon, size: this.size, color: Colors.white,),
      ),
    );
  }
}