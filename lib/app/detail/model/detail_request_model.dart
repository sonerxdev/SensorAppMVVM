import 'package:json_annotation/json_annotation.dart';

part 'detail_request_model.g.dart';

@JsonSerializable()
class DetailRequestModel {
  String? app_token;
  int? userid;
  int? limit;
  List<int>? cihaz_no;

  DetailRequestModel({this.app_token, this.userid, this.limit, this.cihaz_no});


  factory DetailRequestModel.fromJson(Map<String, dynamic> json) {
    return _$DetailRequestModelFromJson(json);
  }


  Map<String, Object?> toJson() {
    return _$DetailRequestModelToJson(this);
  }
}
