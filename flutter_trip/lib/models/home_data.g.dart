// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel(
    json['config'] == null
        ? null
        : Config.fromJson(json['config'] as Map<String, dynamic>),
    (json['bannerList'] as List)
        ?.map((e) =>
            e == null ? null : CommonModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['localNavList'] as List)
        ?.map((e) =>
            e == null ? null : CommonModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['gridNav'] == null
        ? null
        : GridNav.fromJson(json['gridNav'] as Map<String, dynamic>),
    (json['subNavList'] as List)
        ?.map((e) =>
            e == null ? null : CommonModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['salesBox'] == null
        ? null
        : SalesBox.fromJson(json['salesBox'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'config': instance.config,
      'bannerList': instance.bannerList,
      'localNavList': instance.localNavList,
      'gridNav': instance.gridNav,
      'subNavList': instance.subNavList,
      'salesBox': instance.salesBox,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    json['searchUrl'] as String,
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'searchUrl': instance.searchUrl,
    };

CommonModel _$CommonModelFromJson(Map<String, dynamic> json) {
  return CommonModel(
    json['icon'] as String,
    json['title'] as String,
    json['url'] as String,
    json['statusBarColor'] as String,
    json['hideAppBar'] as bool,
  );
}

Map<String, dynamic> _$CommonModelToJson(CommonModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'title': instance.title,
      'url': instance.url,
      'statusBarColor': instance.statusBarColor,
      'hideAppBar': instance.hideAppBar,
    };

GridNav _$GridNavFromJson(Map<String, dynamic> json) {
  return GridNav(
    json['hotel'] == null
        ? null
        : GridNavItemModel.fromJson(json['hotel'] as Map<String, dynamic>),
    json['flight'] == null
        ? null
        : GridNavItemModel.fromJson(json['flight'] as Map<String, dynamic>),
    json['travel'] == null
        ? null
        : GridNavItemModel.fromJson(json['travel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GridNavToJson(GridNav instance) => <String, dynamic>{
      'hotel': instance.hotel,
      'flight': instance.flight,
      'travel': instance.travel,
    };

GridNavItemModel _$GridNavItemModelFromJson(Map<String, dynamic> json) {
  return GridNavItemModel(
    json['startColor'] as String,
    json['endColor'] as String,
    json['mainItem'] == null
        ? null
        : CommonModel.fromJson(json['mainItem'] as Map<String, dynamic>),
    json['item1'] == null
        ? null
        : CommonModel.fromJson(json['item1'] as Map<String, dynamic>),
    json['item2'] == null
        ? null
        : CommonModel.fromJson(json['item2'] as Map<String, dynamic>),
    json['item3'] == null
        ? null
        : CommonModel.fromJson(json['item3'] as Map<String, dynamic>),
    json['item4'] == null
        ? null
        : CommonModel.fromJson(json['item4'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GridNavItemModelToJson(GridNavItemModel instance) =>
    <String, dynamic>{
      'startColor': instance.startColor,
      'endColor': instance.endColor,
      'mainItem': instance.mainItem,
      'item1': instance.item1,
      'item2': instance.item2,
      'item3': instance.item3,
      'item4': instance.item4,
    };

SalesBox _$SalesBoxFromJson(Map<String, dynamic> json) {
  return SalesBox(
    json['icon'] as String,
    json['moreUrl'] as String,
    json['bigCard1'] == null
        ? null
        : CommonModel.fromJson(json['bigCard1'] as Map<String, dynamic>),
    json['bigCard2'] == null
        ? null
        : CommonModel.fromJson(json['bigCard2'] as Map<String, dynamic>),
    json['smallCard1'] == null
        ? null
        : CommonModel.fromJson(json['smallCard1'] as Map<String, dynamic>),
    json['smallCard2'] == null
        ? null
        : CommonModel.fromJson(json['smallCard2'] as Map<String, dynamic>),
    json['smallCard3'] == null
        ? null
        : CommonModel.fromJson(json['smallCard3'] as Map<String, dynamic>),
    json['smallCard4'] == null
        ? null
        : CommonModel.fromJson(json['smallCard4'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SalesBoxToJson(SalesBox instance) => <String, dynamic>{
      'icon': instance.icon,
      'moreUrl': instance.moreUrl,
      'bigCard1': instance.bigCard1,
      'bigCard2': instance.bigCard2,
      'smallCard1': instance.smallCard1,
      'smallCard2': instance.smallCard2,
      'smallCard3': instance.smallCard3,
      'smallCard4': instance.smallCard4,
    };
