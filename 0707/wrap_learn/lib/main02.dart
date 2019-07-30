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
    return Wrap(
      spacing: 15,
      runSpacing: 5,
      alignment: WrapAlignment.spaceBetween,
      direction: Axis.vertical,
      children: <Widget>[
        MyButton('第一集'),
        MyButton('第二集第二集第二集第二集第二集'),
        MyButton('第三集'),
        MyButton('第四集'),
        MyButton('第5️⃣集'),
        MyButton('第六集'),
        MyButton('第七集'),
      ],
    );
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