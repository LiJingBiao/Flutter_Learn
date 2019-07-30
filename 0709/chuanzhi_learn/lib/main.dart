import 'package:flutter/material.dart';
import 'Pages/Tabs.dart';
import 'Pages/Route.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Material App',
      //home: Tabs(),
      initialRoute: '/homeDetail',
      //routes: route,
      onGenerateRoute: onGenerateRoute,
    );
    
  }
}


