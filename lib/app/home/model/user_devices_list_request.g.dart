// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_devices_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDevicesListRequest _$UserDevicesListRequestFromJson(
    Map<String, dynamic> json) {
  return UserDevicesListRequest(
    appToken: json['appToken'] as String?,
    userid: json['userid'] as int?,
    cihazNo: (json['cihazNo'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$UserDevicesListRequestToJson(
        UserDevicesListRequest instance) =>
    <String, dynamic>{
      'appToken': instance.appToken,
      'userid': instance.userid,
      'cihazNo': instance.cihazNo,
    };
