// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_devices_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDevicesList _$UserDevicesListFromJson(Map<String, dynamic> json) {
  return UserDevicesList(
    token: json['token'] as bool?,
    userid: json['userid'] as int?,
    cihazNo: (json['cihazNo'] as List<dynamic>?)
        ?.map((e) => CihazNo.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserDevicesListToJson(UserDevicesList instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userid': instance.userid,
      'cihazNo': instance.cihazNo,
    };

CihazNo _$CihazNoFromJson(Map<String, dynamic> json) {
  return CihazNo(
    cihazNo: json['cihazNo'] as int?,
    adSoyad: json['adSoyad'] as String?,
    konum: json['konum'] as String?,
    sonHaberlesme: json['sonHaberlesme'] as String?,
  );
}

Map<String, dynamic> _$CihazNoToJson(CihazNo instance) => <String, dynamic>{
      'cihazNo': instance.cihazNo,
      'adSoyad': instance.adSoyad,
      'konum': instance.konum,
      'sonHaberlesme': instance.sonHaberlesme,
    };
