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
    return MyButton('自定义Button');
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(this.text),
        textColor: Theme.of(context).accentColor,
        onPressed: () {

        },
    );
  }
}