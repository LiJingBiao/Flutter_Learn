import 'package:json_annotation/json_annotation.dart'; 
  
part 'home_data.g.dart';


@JsonSerializable()
  class HomeModel extends Object {

  @JsonKey(name: 'config')
  Config config;

  @JsonKey(name: 'bannerList')
  List<CommonModel> bannerList;

  @JsonKey(name: 'localNavList')
  List<CommonModel> localNavList;

  @JsonKey(name: 'gridNav')
  GridNav gridNav;

  @JsonKey(name: 'subNavList')
  List<CommonModel> subNavList;

  @JsonKey(name: 'salesBox')
  SalesBox salesBox;

  HomeModel(this.config,this.bannerList,this.localNavList,this.gridNav,this.subNavList,this.salesBox,);

  factory HomeModel.fromJson(Map<String, dynamic> srcJson) => _$HomeModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

}

  
@JsonSerializable()
  class Config extends Object {

  @JsonKey(name: 'searchUrl')
  String searchUrl;

  Config(this.searchUrl,);

  factory Config.fromJson(Map<String, dynamic> srcJson) => _$ConfigFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ConfigToJson(this);

}


  
@JsonSerializable()
  class CommonModel extends Object {

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'statusBarColor')
  String statusBarColor;

  @JsonKey(name: 'hideAppBar')
  bool hideAppBar;

  CommonModel(this.icon,this.title,this.url,this.statusBarColor,this.hideAppBar,);

  factory CommonModel.fromJson(Map<String, dynamic> srcJson) => _$CommonModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommonModelToJson(this);

}

  
@JsonSerializable()
  class GridNav extends Object {

  @JsonKey(name: 'hotel')
  GridNavItemModel hotel;

  @JsonKey(name: 'flight')
  GridNavItemModel flight;

  @JsonKey(name: 'travel')
  GridNavItemModel travel;

  GridNav(this.hotel,this.flight,this.travel,);

  factory GridNav.fromJson(Map<String, dynamic> srcJson) => _$GridNavFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GridNavToJson(this);

}

  
@JsonSerializable()
  class GridNavItemModel extends Object {

  @JsonKey(name: 'startColor')
  String startColor;

  @JsonKey(name: 'endColor')
  String endColor;

  @JsonKey(name: 'mainItem')
  CommonModel mainItem;

  @JsonKey(name: 'item1')
  CommonModel item1;

  @JsonKey(name: 'item2')
  CommonModel item2;

  @JsonKey(name: 'item3')
  CommonModel item3;

  @JsonKey(name: 'item4')
  CommonModel item4;

  GridNavItemModel(this.startColor,this.endColor,this.mainItem,this.item1,this.item2,this.item3,this.item4,);

  factory GridNavItemModel.fromJson(Map<String, dynamic> srcJson) => _$GridNavItemModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GridNavItemModelToJson(this);

}

  
@JsonSerializable()
  class SalesBox extends Object {

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'moreUrl')
  String moreUrl;

  @JsonKey(name: 'bigCard1')
  CommonModel bigCard1;

  @JsonKey(name: 'bigCard2')
  CommonModel bigCard2;

  @JsonKey(name: 'smallCard1')
  CommonModel smallCard1;

  @JsonKey(name: 'smallCard2')
  CommonModel smallCard2;

  @JsonKey(name: 'smallCard3')
  CommonModel smallCard3;

  @JsonKey(name: 'smallCard4')
  CommonModel smallCard4;

  SalesBox(this.icon,this.moreUrl,this.bigCard1,this.bigCard2,this.smallCard1,this.smallCard2,this.smallCard3,this.smallCard4,);

  factory SalesBox.fromJson(Map<String, dynamic> srcJson) => _$SalesBoxFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SalesBoxToJson(this);

}

 

  
