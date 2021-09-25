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
    final response = await loginService.getLogin(
      UserRequestModel(email: email, password: password),
    );

    if (response?.app_token != null) {
      saveToken(response?.app_token ?? '');
      navigateToHome();
        setState(() {
        SnackBar snackBar = SnackBar(
          content: Text(
            "Giriş yapma başarılı!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.greenAccent,
          duration: Duration(milliseconds: 2000),
          elevation: 20.0,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }

    else if(response?.app_token == null){
      setState(() {
        SnackBar snackBar = SnackBar(
          content: Text(
            "Şifre ya da E-Posta Hatalı!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 2000),
          elevation: 20.0,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
       
      });
    }

  }

  void navigateToHome() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
  }
}
