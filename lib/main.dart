import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/splash/splash.dart';
import 'package:uzel_bilisim_task/core/auth_manager.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthenticationManager>(
          create: (context) => AuthenticationManager(context: context),
        ), 
         Provider<Home>(
          create: (context) => Home(),
        ), 
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uzel Bilisim',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashView(),
    );
  }
}
