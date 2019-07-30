import './HomeDetail.dart';
import 'HomePage.dart';
import 'SettingsPage.dart';
import 'SearchPage.dart';
import 'Tabs.dart';
import 'package:flutter/material.dart';
import 'HomeThird.dart';
var route = {
  '/': (context) => Tabs(),
  '/homeThird': (context) => HomeThirdPage(),
  '/homeDetail': (context,{arguments}) => HomeDetailPage(arguments: arguments,),
};
/*
var onGenerateRoute = (RouteSettings settings) {
  final String routeName = settings.name;
  final Function builder = route[routeName];
  if (builder != null) {
    if (settings.arguments != null) {
      final route = MaterialPageRoute(builder: (context) => builder(context,arguments:settings.arguments) );
      return route;
    }else {
      Route route = MaterialPageRoute(builder: (context)=>builder(context));
      return route;
    }
  }
};
*/
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = route[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};
