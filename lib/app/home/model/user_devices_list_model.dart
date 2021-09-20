import 'package:json_annotation/json_annotation.dart';

part 'user_devices_list_model.g.dart';

@JsonSerializable()
class UserDevicesList {
  
  bool? token;
  int? userid;
  List<CihazNo>? cihaz_no;

  UserDevicesList({this.token, this.userid, this.cihaz_no});

  factory UserDevicesList.fromJson(Map<String, dynamic> json) {
    return _$UserDevicesListFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$UserDevicesListToJson(this);
  }
}

@JsonSerializable()
class CihazNo {
  int? cihaz_no;
  String? ad_soyad;
  String? konum;
  String? son_haberlesme;

  CihazNo({this.cihaz_no, this.ad_soyad, this.konum, this.son_haberlesme});

  factory CihazNo.fromJson(Map<String, dynamic> json) {
    return _$CihazNoFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$CihazNoToJson(this);
  }
}
