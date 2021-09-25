import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/detail/detail.dart';
import 'package:uzel_bilisim_task/app/detail/model/detail_request_model.dart';
import 'package:uzel_bilisim_task/app/detail/model/detail_response_model.dart';
import 'package:uzel_bilisim_task/app/detail/service/detail_service.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/core/auth_manager.dart';
import 'package:uzel_bilisim_task/core/cache_manager.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';
import 'package:provider/provider.dart';

abstract class DetailViewModel extends State<Detail> with CacheManager {
  late final DetailService detailService;
  final Dio dio = NetworkService.instance.dio;

  DetailResponseModel? _userDevicesList;

  List<CihazTur>? _models = [];

  List<CihazTur>? get model1 => _models;

  @override
  void initState() {
    super.initState();
    detailService = DetailService(dio);
  }

  AuthenticationManager get readAuthManager =>
      context.read<AuthenticationManager>();

  Future<void> fetchUserDevicesListLog() async {
    final token = await readAuthManager.getToken();
    print("calisti");
    final response = await detailService.getUserDevicesLog(
      DetailRequestModel(
        app_token: token,
        userid: 1,
        limit: 1,
        cihaz_no: [100000291],
      ),
    );

    print("response sudur: ");
    print(response?.the100000291);

    if (response?.the100000291 != null) {
      print("detail sayfasinin response u:");
      print(response);
      _userDevicesList = response;
      _models = _userDevicesList?.the100000291?.cihaz_tur;
    }
  }
}
