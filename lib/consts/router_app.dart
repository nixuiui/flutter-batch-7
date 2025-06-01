import 'package:flutter_batch_7/pages/day_4/gridview_builder_screen.dart';
import 'package:flutter_batch_7/pages/day_5/main_screen.dart';
import 'package:flutter_batch_7/pages/day_6/pages/counter_page.dart';

import '../pages/day_5/home_page.dart';

class RouterApp {
  static const String main = '/main';
  static const String home = '/home';
  static const String footballTeamGrid = '/football-team-grid';
  static const String counter = '/counter';
}

final routes = {
  RouterApp.main: (context) => const MainScreen(),
  RouterApp.home: (context) => const HomePage(),
  RouterApp.footballTeamGrid: (context) => const GridViewBuilderScreen(),
  RouterApp.counter: (context) => const CounterPage(),
};