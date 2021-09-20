import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/detail/detail.dart';
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
      body: Center(
        child: ListView.builder(
            itemCount: model1!.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Detail()));
                },
                title: Text(
                  model1?[index].ad_soyad ?? "null kardesim",
                  style: TextStyle(color: Colors.black),
                ),
              );
            }),
      ),
    );
  }
}
