import 'package:flutter_batch_7/pages/day_7/data/sqlite/app_database.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupSignleton() {
  getIt.registerSingleton(AppDatabase());
}