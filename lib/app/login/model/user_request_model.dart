import 'package:json_annotation/json_annotation.dart';
import 'package:uzel_bilisim_task/core/base/base_model.dart';

part 'user_request_model.g.dart';

@JsonSerializable()
class UserRequestModel extends BaseModel<UserRequestModel> {
  String? email;
  String? password;

  UserRequestModel({this.email, this.password});

  @override
  fromJson(Map<String, dynamic> json) {
    return _$UserRequestModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$UserRequestModelToJson(this);
  }
}
