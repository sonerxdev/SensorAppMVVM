import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/app/detail/detail.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/app/home/viewModel/home_view_model.dart';
import 'package:uzel_bilisim_task/core/widgets/home_background.dart';

 class HomeView extends HomeViewModel {
  @override
  void initState() {
    super.initState();
    context.read<HomeViewModel>().fetchUserDevicesList();
  }
HomeViewModel get homeViewModel =>
      context.read<HomeViewModel>();
   

  @override
  Widget build(BuildContext context) {
    // final homeViewModel = Provider.of<HomeViewModel>(context);
    return Scaffold(
      body: Stack(children: [
        BackgroundWidget(),
        Center(
          child: ListView.builder(
              itemCount: homeViewModel.model1!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Detail(model1?[index].cihaz_no)));
                  },
                  title: Text(
                    homeViewModel.model1?[index].ad_soyad ?? "null",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
