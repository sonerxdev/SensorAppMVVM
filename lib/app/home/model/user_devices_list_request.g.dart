// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_devices_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDevicesListRequest _$UserDevicesListRequestFromJson(
    Map<String, dynamic> json) {
  return UserDevicesListRequest(
    app_token: json['app_token'] as String?,
    userid: json['userid'] as int?,
    cihaz_no:
        (json['cihaz_no'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$UserDevicesListRequestToJson(
        UserDevicesListRequest instance) =>
    <String, dynamic>{
      'app_token': instance.app_token,
      'userid': instance.userid,
      'cihaz_no': instance.cihaz_no,
    };
