import 'package:flutter_batch_7/pages/day_7/data/sqlite/app_database.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupSignleton() async {
  getIt.registerSingleton(AppDatabase());
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton(prefs);
}