import 'dart:io';
import 'package:dio/dio.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_request.dart';

// class HomeService extends BaseService {
//   final Dio dio = NetworkService.instance.dio;

//   UserDevicesList? _userDevicesList;

//   List<CihazNo> _models = [];

//   List<CihazNo> get model1 => _models;

//    // Future getUserDevicesList() async {
//   //   final response = await dio.get(ServicePath.PATH.rawValue);

//   //   if (response.statusCode == HttpStatus.ok) {
//   //     final data = response.data;

//   //     // if (data is Map<String, dynamic>) {
//   //     //   _userDevicesList = UserDevicesList.fromJson(data);
//   //     //   _models = _userDevicesList!.cihazNo!
//   //     //       .map((i) => CihazNo.fromJson(data))
//   //     //       .toList();
//   //     //   print("map türünde");
//   //     //   notifyListeners();
//   //     //   print(response.data);
//   //     // } else if (data is List) {
//   //     //   _models = data.map((e) => CihazNo.fromJson(e)).toList();
//   //     //   print("liste türünde");
//   //     //   notifyListeners();
//   //     //   print(data);
//   //     // }
//   //   }
//   //   notifyListeners();
//   // }
// }

abstract class IHomeService {
  IHomeService(this.dio);

  Future<UserDevicesList?> getUserDevicesList(UserDevicesListRequest model);
  final Dio dio;
}

class HomeService extends IHomeService {
  HomeService(Dio dio) : super(dio);

  @override
  Future<UserDevicesList?> getUserDevicesList(
      UserDevicesListRequest model) async {
    final response = await dio.post(
      ServicePath.PATH.rawValue,
      data: model,
      options: Options(contentType: Headers.jsonContentType),
    );

    if (response.statusCode == HttpStatus.ok) {
      print(response);
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
