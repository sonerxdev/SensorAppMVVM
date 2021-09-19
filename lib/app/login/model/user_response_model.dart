import 'package:json_annotation/json_annotation.dart';
import 'package:uzel_bilisim_task/core/base/base_model.dart';

part 'user_response_model.g.dart';

@JsonSerializable()
class UserResponseModel extends BaseModel<UserResponseModel> {
  String? app_token;
  int? userid;

  UserResponseModel({this.app_token, this.userid});

  @override
  UserResponseModel fromJson(Map<String, dynamic> json) {
    return _$UserResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$UserResponseModelToJson(this);
  }
}


// {
//     "app_token": "$2y$10$hLFdM1M8Ft7XdMiDyjhO7uuh5JQWdBOQx9fp31Sr43F9sGEEth36W",
//     "userid": 1
// }