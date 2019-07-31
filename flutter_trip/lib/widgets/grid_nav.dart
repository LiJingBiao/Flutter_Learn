import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_trip/models/home_data.dart';
import 'package:flutter_trip/pages/webview.dart';

class GridNavView extends StatelessWidget {
  final GridNav gridNavModel;
  const GridNavView({Key key, this.gridNavModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (gridNavModel == null) {
      return  Container(width: 0.0, height: 0.0);
    }
    return _generateGridColum(model: gridNavModel,context: context);
  }

  Widget _generateGridColum({GridNav model, BuildContext context}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 8.0,
      ),
      //height: 240,
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(5),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            _generateGridRow(model: gridNavModel.hotel,context: context),
            SizedBox(
              height: 2,
            ),
            _generateGridRow(model: gridNavModel.flight,context: context),
            SizedBox(
              height: 2,
            ),
            _generateGridRow(model: gridNavModel.travel,context: context),
          ],
        ), color: Colors.transparent,
      ),
    );
  }

  Widget _generateGridRow({GridNavItemModel model, BuildContext context}) {
    
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(int.parse('0xff'+model.startColor)),
          Color(int.parse('0xff'+model.endColor)),
        ],
      )),
      height: 80,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _generateLeftItem(model: model.mainItem,context: context),
          ),
          Expanded(
            flex: 1,
            child: _generateCenterItem(model1: model.item1,model2: model.item2,context: context),
          ),
          Expanded(
            flex: 1,
            child: _generateCenterItem(model1: model.item3,model2: model.item4,context: context),
          ),
        ],
      ),
    );
  }

  Widget _generateLeftItem({CommonModel model, BuildContext context}) {
    return _gestureWrap(
      model: model,
      context: context,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.network(
              model.icon,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              model.title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _generateCenterItem({CommonModel model1,CommonModel model2, BuildContext context}) {
    return Column(
      children: <Widget>[
        _generateMiniItem(model1 ,context: context),
        _generateMiniItem(model2, isBoottom: true,context: context),
      ],
    );
  }

  Widget _generateMiniItem(CommonModel model, {bool isBoottom = false,BuildContext context}) {
    BorderSide borderSide = BorderSide(color: Colors.white, width: 0.5);

    return Expanded(
      flex: 1,
      child: FractionallySizedBox(
        widthFactor: 1,
        child: _gestureWrap(
          model: model,
          context: context,
          child: Container(
            child: Center(
              child: Text(
                model.title,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            decoration: BoxDecoration(
                border: Border(
                    left: borderSide,
                    bottom: isBoottom ? BorderSide.none : borderSide)),
          ),
        ),
      ),
    );
  }

  Widget _gestureWrap({Widget child, CommonModel model, BuildContext context}) {
    return GestureDetector(
      onTap: () {
        print(model.url);
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => WebView(url: model.url, statusBarColor: model.statusBarColor, hideAppBar: model.hideAppBar,)
          ));
      },
      child: child,
    );
  }
}
