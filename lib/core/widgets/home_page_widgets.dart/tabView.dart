import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzel_bilisim_task/core/base/base_state.dart';
import 'package:uzel_bilisim_task/core/widgets/constants.dart';

class TabViewWidget extends StatelessWidget {

   final List<Widget> children ;
  const TabViewWidget({Key? key,required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DefaultTabController(
            length: 4,
            child: Column(
              children: [
                Padding(
                  padding: context.insetHorizontal(0.01),
                  child: TabBar(
                    labelStyle: GoogleFonts.yantramanav(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 2,
                          color: mainColor,
                        ),
                        insets: EdgeInsets.fromLTRB(15, 5, 15, 5)),
                    labelColor: mainColor,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: 'Oda 1',
                      ),
                      Tab(
                        text: 'Oda 2',
                      ),
                      Tab(
                        text: 'Oda 3',
                      ),
                      Tab(
                        text: 'Oda 4',
                      )
                    ],
                  ),
                ),
                Container(
                  height: context.dynamicHeight(0.5),
                  child: TabBarView(
                    children: children
                      
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
