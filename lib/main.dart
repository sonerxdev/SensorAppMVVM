
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/app/detail/detail.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/app/home/viewModel/home_view_model.dart';
import 'package:uzel_bilisim_task/app/splash/splash.dart';
import 'package:uzel_bilisim_task/core/auth_manager.dart';
import 'package:uzel_bilisim_task/core/base/base_service.dart';
import 'package:uzel_bilisim_task/core/network/network_service.dart';
final Dio dio = NetworkService.instance.dio;

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthenticationManager>(
          create: (context) => AuthenticationManager(context: context),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeService(dio),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uzel Bilisim',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashView(),
    );
  }
}
