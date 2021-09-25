// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailResponseModel _$DetailResponseModelFromJson(Map<String, dynamic> json) {
  return DetailResponseModel(
    the100000291: json['the100000291'] == null
        ? null
        : The100000291.fromJson(json['the100000291'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetailResponseModelToJson(
        DetailResponseModel instance) =>
    <String, dynamic>{
      'the100000291': instance.the100000291,
    };

The100000291 _$The100000291FromJson(Map<String, dynamic> json) {
  return The100000291(
    cihaz_no: json['cihaz_no'] as int?,
    cihaz_tur: (json['cihaz_tur'] as List<dynamic>?)
        ?.map((e) => CihazTur.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$The100000291ToJson(The100000291 instance) =>
    <String, dynamic>{
      'cihaz_no': instance.cihaz_no,
      'cihaz_tur': instance.cihaz_tur,
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
