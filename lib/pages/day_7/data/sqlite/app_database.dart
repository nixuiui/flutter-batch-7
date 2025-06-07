import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_batch_7/pages/day_7/data/sqlite/tables/product_table.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [Product],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConntection());

  @override
  int get schemaVersion => 1;

}

LazyDatabase _openConntection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final dbFile = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase(dbFile);
  });
}