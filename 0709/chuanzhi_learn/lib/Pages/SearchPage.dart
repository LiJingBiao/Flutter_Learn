import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text('跳转传值'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context){
                  return SearchDetail(title:'老史');
                }
              )
            );
          },
        ),
      ),
    );
  }
}

class SearchDetail extends StatelessWidget {
  String title = '哈哈';
   SearchDetail({this.title='老李'}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
      child: ListTile(
        title: Text(this.title),
      ),
    ),
    );
  }
}