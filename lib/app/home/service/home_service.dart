
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/core/base/base_service.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';

class HomeService extends BaseService {
  final Dio dio = NetworkService.instance.dio;

  UserDevicesList? _userDevicesList;

  List<CihazNo> _models = [];

  List<CihazNo> get model1 => _models;

  Future getUserDevicesList() async {
    final response = await dio.get(ServicePath.PATH.rawValue);
    print("calisiyor aga");
    print(response.data);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        _userDevicesList = UserDevicesList.fromJson(data);
        _models = _userDevicesList!.cihazNo!
            .map((i) => CihazNo.fromJson(data))
            .toList();
        print("map türünde");
        notifyListeners();
        print(response.data);
      } else if (data is List) {
        _models = data.map((e) => CihazNo.fromJson(e)).toList();
        print("liste türünde");
        notifyListeners();
        print(data);
      }
    }
    notifyListeners();
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
