import 'package:flutter_batch_7/pages/day_7/data/sqlite/app_database.dart';

class ProductDb {

  final AppDatabase db;

  ProductDb(this.db);

  Future<int> addProduct(ProductCompanion product) {
    return db.into(db.product).insert(product);
  }

  Future<List<ProductData>> getAllProduct() {
    return db.select(db.product).get();
  }

  Future<void> deleteProduct(int id) async {
    await (db.delete(db.product)..where((tbl) => tbl.id.equals(id))).go();
  }

}