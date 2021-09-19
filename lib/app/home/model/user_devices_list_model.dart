import 'package:json_annotation/json_annotation.dart';

part 'user_devices_list_model.g.dart';

@JsonSerializable()
class UserDevicesList {
  bool? token;
  int? userid;
  List<CihazNo>? cihazNo;

  UserDevicesList({this.token, this.userid, this.cihazNo});


   factory UserDevicesList.fromJson(Map<String, dynamic> json) {
     return _$UserDevicesListFromJson(json);
  }


  Map<String, Object?> toJson() {
     return _$UserDevicesListToJson(this);
  }



 
}

@JsonSerializable()
class CihazNo {
  int? cihazNo;
  String? adSoyad;
  String? konum;
  String? sonHaberlesme;

  CihazNo({this.cihazNo, this.adSoyad, this.konum, this.sonHaberlesme});


  factory  CihazNo.fromJson(Map<String, dynamic> json) {
     return _$CihazNoFromJson(json);
  }

  
  Map<String, Object?> toJson() {
     return _$CihazNoToJson(this);
  }

  
}
