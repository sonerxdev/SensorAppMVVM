import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/home/view/home_view.dart';
import 'package:uzel_bilisim_task/app/login/login.dart';
import 'package:uzel_bilisim_task/app/login/model/user_request_model.dart';
import 'package:uzel_bilisim_task/app/login/service/login_services.dart';
import 'package:uzel_bilisim_task/core/cache_manager.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';

abstract class LoginViewModel extends State<Login>
    with CacheManager, ChangeNotifier {
  late final LoginService loginService;
  final Dio dio = NetworkService.instance.dio;

  @override
  void initState() {
    super.initState();
    loginService = LoginService(dio);
  }

  Future<void> fetchUserLogin(String email, String password) async {
    final response = await loginService
        .getLogin(UserRequestModel(email: email, password: password));

    if (response?.app_token != null) {
      print(response?.app_token);
      saveToken(response?.app_token ?? '');
      navigateToHome();
    }
  
    
  }

  void navigateToHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Home()));
  }
}
