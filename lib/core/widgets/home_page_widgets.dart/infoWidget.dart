import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzel_bilisim_task/core/base/base_state.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.insetsAll(0.035),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.15)),
        height: context.dynamicHeight(0.20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFDBE5E8)),
                height: context.dynamicHeight(0.15),
                width: context.dynamicHeight(0.15),
                child: Icon(
                  Icons.sensors_sharp,
                  size: 50.0,
                  color: Colors.black,
                )),
            Padding(
              padding: context.insetVertical(0.020),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Borusan",
                    style: GoogleFonts.yantramanav(
                      textStyle: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "24 Eyl 2021",
                    style: GoogleFonts.yantramanav(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Text(
                    "Türkiye, İstanbul",
                    style: GoogleFonts.yantramanav(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: context.insetVertical(0.010),
              child: Text(
                "4°C",
                style: GoogleFonts.yantramanav(
                  textStyle: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
