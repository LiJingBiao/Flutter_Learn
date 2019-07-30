import 'package:json_annotation/json_annotation.dart'; 
  
part 'city_model.g.dart';


@JsonSerializable()
  class Citys extends Object {

  @JsonKey(name: 'info')
  List<Info> info;

  Citys(this.info,);

  factory Citys.fromJson(Map<String, dynamic> srcJson) => _$CitysFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CitysToJson(this);

}

  
@JsonSerializable()
  class Info extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'areaname')
  String areaname;

  @JsonKey(name: 'shortname')
  String shortname;

  @JsonKey(name: 'parentid')
  int parentid;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'childList')
  List<ChildList> childList;

  Info(this.id,this.areaname,this.shortname,this.parentid,this.level,this.childList,);

  factory Info.fromJson(Map<String, dynamic> srcJson) => _$InfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$InfoToJson(this);

}

  
@JsonSerializable()
  class ChildList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'areaname')
  String areaname;

  @JsonKey(name: 'shortname')
  String shortname;

  @JsonKey(name: 'parentid')
  int parentid;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'childList')
  List<dynamic> childList;

  ChildList(this.id,this.areaname,this.shortname,this.parentid,this.level,this.childList,);

  factory ChildList.fromJson(Map<String, dynamic> srcJson) => _$ChildListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChildListToJson(this);

}

  
