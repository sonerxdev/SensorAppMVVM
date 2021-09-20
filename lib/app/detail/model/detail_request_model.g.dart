// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailRequestModel _$DetailRequestModelFromJson(Map<String, dynamic> json) {
  return DetailRequestModel(
    app_token: json['app_token'] as String?,
    userid: json['userid'] as int?,
    limit: json['limit'] as int?,
    cihaz_no:
        (json['cihaz_no'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$DetailRequestModelToJson(DetailRequestModel instance) =>
    <String, dynamic>{
      'app_token': instance.app_token,
      'userid': instance.userid,
      'limit': instance.limit,
      'cihaz_no': instance.cihaz_no,
    };
