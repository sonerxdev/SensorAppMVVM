// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_devices_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDevicesList _$UserDevicesListFromJson(Map<String, dynamic> json) {
  return UserDevicesList(
    token: json['token'] as bool?,
    userid: json['userid'] as int?,
    cihaz_no: (json['cihaz_no'] as List<dynamic>?)
        ?.map((e) => CihazNo.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserDevicesListToJson(UserDevicesList instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userid': instance.userid,
      'cihaz_no': instance.cihaz_no,
    };

CihazNo _$CihazNoFromJson(Map<String, dynamic> json) {
  return CihazNo(
    cihaz_no: json['cihaz_no'] as int?,
    ad_soyad: json['ad_soyad'] as String?,
    konum: json['konum'] as String?,
    son_haberlesme: json['son_haberlesme'] as String?,
  );
}

Map<String, dynamic> _$CihazNoToJson(CihazNo instance) => <String, dynamic>{
      'cihaz_no': instance.cihaz_no,
      'ad_soyad': instance.ad_soyad,
      'konum': instance.konum,
      'son_haberlesme': instance.son_haberlesme,
    };
