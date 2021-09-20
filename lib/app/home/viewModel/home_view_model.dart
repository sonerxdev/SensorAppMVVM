import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_request.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/core/auth_manager.dart';
import 'package:uzel_bilisim_task/core/cache_manager.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';
import 'package:provider/provider.dart';

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

  AuthenticationManager get readAuthManager =>
      context.read<AuthenticationManager>();

  Future<void> fetchUserDevicesList() async {
    final token = await readAuthManager.getToken();
    print("Shared Preferencesdaki token:");
    print(token);
    print("UserdevicesList fonksiyonu calisti");

    final response = await homeService.getUserDevicesList(
      UserDevicesListRequest(
        app_token: token,
        userid: 1,
        cihaz_no: [100000291],
      ),
    );

    print("User id : ");
    print(response?.userid.toString());

    if (response?.token != null) {
      print("response null degil");
      print(response?.userid);
      _userDevicesList = response;
      _models = _userDevicesList?.cihaz_no;
    }
  }
}
