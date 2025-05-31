import 'package:flutter_batch_7/pages/day_4/gridview_builder_screen.dart';
import 'package:flutter_batch_7/pages/day_5/main_screen.dart';

import '../pages/day_5/home_page.dart';

class RouterApp {
  static const String main = '/main';
  static const String home = '/home';
  static const String footballTeamGrid = '/football-team-grid';
}

final routes = {
  RouterApp.main: (context) => const MainScreen(),
  RouterApp.home: (context) => const HomePage(),
  RouterApp.footballTeamGrid: (context) => const GridViewBuilderScreen(),
};