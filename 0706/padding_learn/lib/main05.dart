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
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.security,size:50,color:Colors.purple),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.security,size:50,color:Colors.blue),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 50,
            color: Colors.blueGrey,
          ),
        ),
      ],
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