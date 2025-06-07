import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_7/data/sqlite/app_database.dart';
import 'package:flutter_batch_7/pages/day_7/data/sqlite/services/product_db.dart';
import 'package:flutter_batch_7/pages/day_7/pages/product_form.dart';
import 'package:flutter_batch_7/singleton.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final productDb = ProductDb(getIt.get<AppDatabase>());
  final List<ProductData> products = [];

  Future<void> _fetchProducts() async {
    final productList = await productDb.getAllProduct();
    setState(() {
      products.clear();
      products.addAll(productList);
    });
  }

  Future<void> _deleteProducts(int id) async {
    await productDb.deleteProduct(id);
    await _fetchProducts();
  }

  @override
  void initState() {
    _fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DriftDbViewer(getIt.get<AppDatabase>())
              ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              await Navigator.push(context, MaterialPageRoute(
                builder: (context) => const ProductForm()
              ));
              _fetchProducts();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index].name ?? ''),
          subtitle: Text('Price ${products[index].price}'),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _deleteProducts(products[index].id),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the add product page
          Navigator.pushNamed(context, '/addProduct');
        },
        tooltip: 'Add Product',
        child: const Icon(Icons.add),
      ),
    );
  }
}