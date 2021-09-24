import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzel_bilisim_task/core/base/base_state.dart';
import 'package:uzel_bilisim_task/core/widgets/constants.dart';

class SensorsListWidget extends StatefulWidget {
  final int? cihaz_no;
  final String? ad_soyad;
  final String? konum;
  const SensorsListWidget(
      {Key? key, @required this.cihaz_no, required this.ad_soyad,@required this.konum})
      : super(key: key);

  @override
  _SensorsListWidgetState createState() => _SensorsListWidgetState();
}

class _SensorsListWidgetState extends State<SensorsListWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: context.insetsAll(0.020),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => {
                      // Navigator.of(context).push(new AireConditionerRoute())
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            secondaryColor,
                            mainColor,
                          ],
                        ),
                      ),
                      height: context.dynamicHeight(0.25),
                      width: context.dynamicWidth(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: context.insetsAll(0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  widget.ad_soyad ?? "",
                                  style: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                widget.cihaz_no.toString(),
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                widget.konum ?? "",
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: context.insetHorizontal(0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  isActive ? "On" : "Off",
                                  style: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Switch(
                                  onChanged: (bool value) {
                                    setState(() {
                                      isActive = value;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.green,
                                  value: isActive,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    height: 100,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF353FF2),
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF353FF2),
                                  blurRadius: 25,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.coffee_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                Text(
                                  "Rest",
                                  style: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF353FF2),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Room Condition",
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                "16°C",
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "Power Consumption",
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                "89 W",
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
