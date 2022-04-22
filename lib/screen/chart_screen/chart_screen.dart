import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/strings.dart';

import '../../widget/ktext.dart';
import '../chart_screen/first/chart_screen_first.dart';
import '../chart_screen/second/chart_screen_second.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final screens = [const ChartScreenFirst(), const ChartScreenSecond()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: Strings.first,
            ),
            Tab(
              text: Strings.second,
            )
          ]),
          title: KText(
            text: Strings.chart, color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: screens),
      ),
    );
  }
}