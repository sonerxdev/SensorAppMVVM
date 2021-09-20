import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/home/viewModel/home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  void initState() {
    super.initState();
    fetchUserDevicesList();
  }

  @override
  Widget build(BuildContext context) {
    // final homeService = Provider.of<HomeService>(context);

    return Scaffold(
      body: ListView.builder(
          itemCount: model1!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                model1?[index].adSoyad ?? "null kardesim",
                style: TextStyle(color: Colors.black),
              ),
            );
          }),
    );
  }
}
