
import 'package:json_annotation/json_annotation.dart';
import 'package:uzel_bilisim_task/core/base/base_model.dart';

part 'user_devices_list_request.g.dart';

@JsonSerializable()
class UserDevicesListRequest  extends BaseModel<UserDevicesListRequest>{
  String? app_token;
  int? userid;
  List<int>? cihaz_no;

  UserDevicesListRequest({this.app_token, this.userid, this.cihaz_no});

  @override
  UserDevicesListRequest fromJson(Map<String, dynamic> json) {
      return _$UserDevicesListRequestFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$UserDevicesListRequestToJson(this);
  }



 
}
