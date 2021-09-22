import 'package:flutter/material.dart';
import 'cache_manager.dart';

class AuthenticationManager extends CacheManager {
  BuildContext context;
  AuthenticationManager({
    required this.context,
  }
  ) {
    fetchUserLogin();
  }

  bool isLogin = false;


  //void removeAllData() {}

  Future<void> fetchUserLogin() async {
    final token = await getToken();
    print(token);
    if (token != null && token.length > 3) {
      isLogin = true;
    }
  }
}
