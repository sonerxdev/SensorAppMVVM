import 'package:json_annotation/json_annotation.dart';



part 'detail_response_model.g.dart';

@JsonSerializable()  
class DetailResponseModel {
  DeviceNo? cihaz_no;

  DetailResponseModel({this.cihaz_no});

  factory DetailResponseModel.fromJson(Map<String, dynamic> json) {
    return _$DetailResponseModelFromJson(json);
  }

  Map<String, Object?> toJson() {
      return _$DetailResponseModelToJson(this);
  }
  
}



@JsonSerializable()
class DeviceNo  {
  int? cihaz_no;
  List<CihazTur>? cihaz_tur;
  List<String>? cihaz_last_data;

  DeviceNo({this.cihaz_no, this.cihaz_tur, this.cihaz_last_data});

  
  factory DeviceNo.fromJson(Map<String, dynamic> json) {
   return _$DeviceNoFromJson(json);
  }

  Map<String, Object?> toJson() {
     return _$DeviceNoToJson(this);
  }



 
}


@JsonSerializable()
class CihazTur {
  int? t;
  int? min;
  int? max;
  String? input;
  String? title;
  String? symbol;

  CihazTur({this.t, this.min, this.max, this.input, this.title, this.symbol});


  factory CihazTur.fromJson(Map<String, dynamic> json) {
    return _$CihazTurFromJson(json);
  }


  Map<String, Object?> toJson() {
    return _$CihazTurToJson(this);
  } 
}