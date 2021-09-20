// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailResponseModel _$DetailResponseModelFromJson(Map<String, dynamic> json) {
  return DetailResponseModel(
    json['cihaz_no'] == null
        ? null
        : DeviceNo.fromJson(json['cihaz_no'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetailResponseModelToJson(
        DetailResponseModel instance) =>
    <String, dynamic>{
      'cihaz_no': instance.cihaz_no,
    };

DeviceNo _$DeviceNoFromJson(Map<String, dynamic> json) {
  return DeviceNo(
    cihaz_no: json['cihaz_no'] as int?,
    cihaz_tur: (json['cihaz_tur'] as List<dynamic>?)
        ?.map((e) => CihazTur.fromJson(e as Map<String, dynamic>))
        .toList(),
    cihaz_last_data: (json['cihaz_last_data'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$DeviceNoToJson(DeviceNo instance) => <String, dynamic>{
      'cihaz_no': instance.cihaz_no,
      'cihaz_tur': instance.cihaz_tur,
      'cihaz_last_data': instance.cihaz_last_data,
    };

CihazTur _$CihazTurFromJson(Map<String, dynamic> json) {
  return CihazTur(
    t: json['t'] as int?,
    min: json['min'] as int?,
    max: json['max'] as int?,
    input: json['input'] as String?,
    title: json['title'] as String?,
    symbol: json['symbol'] as String?,
  );
}

Map<String, dynamic> _$CihazTurToJson(CihazTur instance) => <String, dynamic>{
      't': instance.t,
      'min': instance.min,
      'max': instance.max,
      'input': instance.input,
      'title': instance.title,
      'symbol': instance.symbol,
    };
