import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_request.dart';
import 'package:uzel_bilisim_task/core/auth_manager.dart';
import 'package:uzel_bilisim_task/core/cache_manager.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';
import 'package:provider/provider.dart';


abstract class IHomeService {
  IHomeService(this.dio);

  Future<UserDevicesList?> getUserDevicesList(UserDevicesListRequest model);
  final Dio dio;
}

class HomeService extends IHomeService with ChangeNotifier, CacheManager{
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





 // late final HomeService homeService;
 // final Dio dio = NetworkService.instance.dio;

  UserDevicesList? userDevicesList;

  List<CihazNo>? _models = [];

  List<CihazNo>? get model1 => _models;

  // @override
  // void initState() {
  //   super.initState();
  //   homeService = HomeService(dio);
  // }


  Future<void> fetchUserDevicesList() async {
    final token = await getToken();

    final response = await getUserDevicesList(
      UserDevicesListRequest(
        app_token: token,
        userid: 1,
        cihaz_no: [100000291],
      ),
    );

    if (response?.token != null) {
      userDevicesList = response;
      _models = userDevicesList?.cihaz_no;
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
