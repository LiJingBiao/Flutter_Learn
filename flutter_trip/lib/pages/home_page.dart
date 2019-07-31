import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_trip/Dao/home_dao.dart';
import 'package:flutter_trip/models/home_data.dart';
import 'package:flutter_trip/widgets/grid_nav.dart';
import 'package:flutter_trip/widgets/local_nav.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _offset = 80.0;
  double _opacity = 0;
  final List _imgUrls = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563904367095&di=54958c57bbda48c3cbf0e9e8d3063e3a&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201210%2F04%2F20121004233010_y2xNS.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563904367095&di=23d108a34bb4c075dca6c5374cf79b6a&imgtype=0&src=http%3A%2F%2Fpic5.nipic.com%2F20100120%2F3641224_180653657501_2.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563904367094&di=3bd4f8caa1caa47b373ea88ad3355efb&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2Fcd2476300bbad8dfcfff1d277b79401a.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563904367094&di=8de5060aff0e8dba2bfeec1132031555&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2Ff54083119edfb83c4cfe9ce2eeebc076.jpeg',
  ];
  _onScroll(pixels) {
    //print(pixels);
    double alpha = pixels / _offset;
    if (alpha < 0) {
      alpha = 0.0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      _opacity = alpha;
    });
  }
  @override
  void initState() { 
    super.initState();
    loadData();
  }

  String _resultData = '';
  List<CommonModel> localNavData = [];
  GridNav gridNavModel;
  void loadData() async {
      HomeDao.fetch().then((HomeModel homeModel){
        setState(() {
          //_resultData = jsonEncode(homeModel);
          localNavData = homeModel.localNavList;
          gridNavModel = homeModel.gridNav;
        });
      }).catchError((error){
        print(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: <Widget>[
            NotificationListener(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification &&
                    notification.depth == 0) {
                  _onScroll(notification.metrics.pixels);
                }
                return false;
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Swiper(
                      pagination: SwiperPagination(),
                      autoplay: true,
                      itemCount: _imgUrls.length,
                      itemBuilder: (context, index) {
                        return Image.network(
                          _imgUrls[index],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  LocalNav(data: localNavData,),
                  GridNavView(gridNavModel: gridNavModel,),
                  Text('show result',),
                ],
              ),
            ),
            Opacity(
              opacity: _opacity,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 84,
                child: Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Center(
                    child: Text('首页',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
