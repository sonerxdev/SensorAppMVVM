import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uzel_bilisim_task/app/login/model/user_request_model.dart';
import 'package:uzel_bilisim_task/app/login/model/user_response_model.dart';



abstract class ILoginService{
    ILoginService(this.dio);

  Future<UserResponseModel?> getLogin(UserRequestModel model);
  final Dio dio;
}

class LoginService extends ILoginService {
  LoginService(Dio dio) : super(dio);

  @override
  Future<UserResponseModel?> getLogin(UserRequestModel model) async {
    final response = await dio.post( ServicePath.LOGIN.rawValue, data: model, options: Options(contentType: Headers.jsonContentType));

    if (response.statusCode == HttpStatus.ok) {
      return UserResponseModel().fromJson(response.data);
    }

    return null;
  }
}



enum ServicePath { LOGIN }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.LOGIN:
        return '/api/userlogin';
    }
  }
}
