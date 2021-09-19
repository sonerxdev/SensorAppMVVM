import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/home/home.dart';
import 'package:uzel_bilisim_task/app/home/model/user_devices_list_model.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';

abstract class HomeViewModel extends State<Home> {
  
  List<CihazNo> model2 = [];

  Future getData() async {
    model2 = await context.read<HomeService>().getUserDevicesList();
  }
}
