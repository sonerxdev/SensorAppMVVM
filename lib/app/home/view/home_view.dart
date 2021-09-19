import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/app/home/viewModel/home_view_model.dart';

class HomeView extends HomeViewModel {

  
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final homeService = Provider.of<HomeService>(context);


    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
          itemCount: homeService.model1.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                homeService.model1[index].adSoyad ?? "null kardesim",
                style: TextStyle(color: Colors.black),
              ),
            );
          }),
    );
  }
}
