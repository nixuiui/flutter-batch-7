import 'package:drift/drift.dart';

class Product extends Table {
  @override
  String get tableName => 'products';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  RealColumn get price => real().nullable()();
}