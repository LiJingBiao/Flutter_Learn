import 'dart:core';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp(
      initParams: window.defaultRouteName,
    ));

class MyApp extends StatelessWidget {
  final String initParams;
  const MyApp({Key key, this.initParams}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 混合开发',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyHomePage(
        initParams: initParams,
        title: 'Flutter 混合开发',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String initParams;
  final String title;
  MyHomePage({Key key, this.initParams, this.title}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const EventChannel _eventChannelPlugin =
      EventChannel('EventChannelPlugin');
  String showMsg = '';
  static const MethodChannel _methodChannelPlugin =
      MethodChannel('MethodChannelPlugin');
  static const BasicMessageChannel<String> _basicMessageChannelPlugin =
      BasicMessageChannel('BasicMessageChannelPlugin', StringCodec());
  bool _isMethodChannelPlugin = false;
  StreamSubscription _streamSubscription;
  @override
  void initState() {
    _streamSubscription = _eventChannelPlugin
        .receiveBroadcastStream('124')
        .listen(_onToDart, onError: _onError);

    _basicMessageChannelPlugin.setMessageHandler((message) {
      setState(() {
        showMsg = 'BasicMessageChannel:' + message;
      });
      return Future.value("收到Native的消息：" + message);
    });

    super.initState();
  }

  @override
  void dispose() {
    if (_streamSubscription != null) {
      _streamSubscription.cancel();
      _streamSubscription = null;
    }
    super.dispose();
  }

  void _onToDart(message) {
    setState(() {
      showMsg = 'EventChannel:' + message;
    });
  }
  void _onError(error) {
    print(error);
  }

  void _onTextChange(value) async {
    String response;
    try {
      if(_isMethodChannelPlugin){
        response = await _methodChannelPlugin.invokeMethod('send', value);
      }else{
        response = await _basicMessageChannelPlugin.send(value);
      }
    } on PlatformException catch (e) {
      print(e);
    }
    setState(() {
      showMsg = response ?? '';
    });
  }

  void _onChannelChanged(bool value) => setState((){
    _isMethodChannelPlugin = value;
  });
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(color: Colors.white),
        margin: EdgeInsets.only(top: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
              value: _isMethodChannelPlugin,
              onChanged: _onChannelChanged,
              title: Text(_isMethodChannelPlugin?'MethodChannelPlugin':'BasicMessageChannelPlugin'),
            ),
            TextField(
              onSubmitted: (string){
                FocusScope.of(context).requestFocus(FocusNode());
              },
              onChanged: _onTextChange,
              decoration: InputDecoration(
                hintText: '输入',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            Text('收到初始参数initParams:${widget.initParams}'),
            Text('Native传来的数据'+showMsg, style: textStyle,),
          ],
        ),
      ),
    );
    ;
  }
}
