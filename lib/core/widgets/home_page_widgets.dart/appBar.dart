import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF120709),
      centerTitle: true,
      actions: [
        Icon(
          FeatherIcons.moreHorizontal,
          color: Colors.white,
          size: 40,
        )
      ],
      title: Text(
        'Smart Sensors',
        style: GoogleFonts.yantramanav(
          textStyle: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      leading: Icon(
        FeatherIcons.alignLeft,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
