import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uzel_bilisim_task/app/detail/detail.dart';
import 'package:uzel_bilisim_task/app/home/service/home_service.dart';
import 'package:uzel_bilisim_task/app/home/viewModel/home_view_model.dart';
import 'package:uzel_bilisim_task/core/widgets/home_page_widgets.dart/appBar.dart';
import 'package:uzel_bilisim_task/core/widgets/home_page_widgets.dart/home_background.dart';
import 'package:uzel_bilisim_task/core/widgets/home_page_widgets.dart/infoWidget.dart';
import 'package:uzel_bilisim_task/core/widgets/home_page_widgets.dart/sensorsListWidget.dart';
import 'package:uzel_bilisim_task/core/widgets/home_page_widgets.dart/tabView.dart';

class HomeView extends HomeViewModel {
  @override
  void initState() {
    super.initState();
    homeViewModel.fetchUserDevicesList();
  }

  HomeService get homeViewModel => context.read<HomeService>();

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeService>(context);
    return Scaffold(
      appBar: AppBarWidget(),
      body: Stack(children: [
        BackgroundWidget(),
        SafeArea(
          child: Column(
            children: [
              InfoWidget(),
              TabViewWidget(
                children: [
                  ListView.builder(
                      itemCount: homeViewModel.model1?.length,
                      itemBuilder: (context, index) {
                        return homeViewModel.model1!.isEmpty
                            ? CircularProgressIndicator()
                            : SensorsListWidget(
                                cihaz_no: homeViewModel.model1?[index].cihaz_no,
                                ad_soyad: homeViewModel.model1?[index].ad_soyad,
                                konum: homeViewModel.model1?[index].konum,
                              );
                      }),
                  Container(
                    child: Center(
                      child: Text(
                        "2. oda",
                        style: GoogleFonts.yantramanav(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "3. oda",
                        style: GoogleFonts.yantramanav(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "4. oda",
                        style: GoogleFonts.yantramanav(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}


//  ListView.builder(
//               itemCount: homeViewModel.model1!.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => Detail(homeViewModel.model1?[index].cihaz_no)));
//                   },
//                   title: Text(
//                     homeViewModel.model1?[index].ad_soyad ?? "null",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               }),