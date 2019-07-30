// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Citys _$CitysFromJson(Map<String, dynamic> json) {
  return Citys(
    (json['info'] as List)
        ?.map(
            (e) => e == null ? null : Info.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CitysToJson(Citys instance) => <String, dynamic>{
      'info': instance.info,
    };

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    json['id'] as int,
    json['areaname'] as String,
    json['shortname'] as String,
    json['parentid'] as int,
    json['level'] as int,
    (json['childList'] as List)
        ?.map((e) =>
            e == null ? null : ChildList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'id': instance.id,
      'areaname': instance.areaname,
      'shortname': instance.shortname,
      'parentid': instance.parentid,
      'level': instance.level,
      'childList': instance.childList,
    };

ChildList _$ChildListFromJson(Map<String, dynamic> json) {
  return ChildList(
    json['id'] as int,
    json['areaname'] as String,
    json['shortname'] as String,
    json['parentid'] as int,
    json['level'] as int,
    json['childList'] as List,
  );
}

Map<String, dynamic> _$ChildListToJson(ChildList instance) => <String, dynamic>{
      'id': instance.id,
      'areaname': instance.areaname,
      'shortname': instance.shortname,
      'parentid': instance.parentid,
      'level': instance.level,
      'childList': instance.childList,
    };
