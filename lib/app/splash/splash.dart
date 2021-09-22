import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/login/login.dart';
import 'package:uzel_bilisim_task/core/auth_manager.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/core/widgets/constants.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<void> controlToApp() async {
    await readAuthManager.fetchUserLogin();
    if (readAuthManager.isLogin == true) {
      await Future.delayed(Duration(seconds: 1));
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Home()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login()));
    }
  }

  AuthenticationManager get readAuthManager =>
      context.read<AuthenticationManager>();

  @override
  void initState() {
    super.initState();
    controlToApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.white,
      )),
    );
  }
}
