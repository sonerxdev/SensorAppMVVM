import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_request.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/core/cache_manager.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';

abstract class HomeViewModel extends State<Home> with CacheManager {
  late final HomeService homeService;
  final Dio dio = NetworkService.instance.dio;

  UserDevicesList? _userDevicesList;

  List<CihazNo>? _models = [];

  List<CihazNo>? get model1 => _models;

  @override
  void initState() {
    super.initState();
    homeService = HomeService(dio);
  }

  Future<void> fetchUserDevicesList() async {
    final token = await getToken();
    print("Shared Preferencesdaki token:");
    print(token);

    print("UserdevicesList fonksiyonu calisti");
    final response = await homeService.getUserDevicesList(
        UserDevicesListRequest(
            appToken: token, userid: 1, cihazNo: [100000291]));

    if (response != null) {
      print("response null degil");
      print(response.userid);
      _userDevicesList = response;
      _models = _userDevicesList?.cihazNo;
    }
  }
}
