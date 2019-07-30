import 'package:flutter/material.dart';

import 'Tabs.dart';

class HomeThirdPage extends StatelessWidget {
  const HomeThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text('确定'),
          onPressed: () {
            /*
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Tabs()),
                (route) => route == null);
              */
            //Navigator.pushNamedAndRemoveUntil(context, '/', (route) => route == null);
            Navigator.popUntil(context, (route) => route == MaterialPageRoute(
              builder: (context){
                return Tabs();
              }
            ));
          },
        ),
      ),
    );
  }
}
