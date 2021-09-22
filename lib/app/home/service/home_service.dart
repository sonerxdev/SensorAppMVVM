import 'dart:io';
import 'package:dio/dio.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_request.dart';

abstract class IHomeService {
  IHomeService(this.dio);

  Future<UserDevicesList?> getUserDevicesList(UserDevicesListRequest model);
  final Dio dio;
}

class HomeService extends IHomeService {
  HomeService(Dio dio) : super(dio);


  @override
  Future<UserDevicesList?> getUserDevicesList(
      UserDevicesListRequest? model) async {
    print("Homeservice modeli: ");
    print(model?.userid);
    final response = await dio.post(
      ServicePath.PATH.rawValue,
      data: model,
      options: Options(contentType: Headers.jsonContentType),
    );

    if (response.statusCode == HttpStatus.ok) {
      print("response Statuscode OK");
      print(response.data);
      return UserDevicesList.fromJson(response.data);
    }
    
    return null;
  }





  
  

}

enum ServicePath { PATH }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.PATH:
        return '/api/userdeviceslist';
    }
  }
}
