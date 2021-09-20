import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/app/detail/view/detail_view.dart';

class Detail extends StatefulWidget {
  final int? cihaz_no;
  Detail(this.cihaz_no);

  @override
  DetailView createState() => new DetailView();
}
