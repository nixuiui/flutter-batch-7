import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_7/data/sqlite/app_database.dart';
import 'package:flutter_batch_7/pages/day_7/data/sqlite/services/product_db.dart';
import 'package:flutter_batch_7/singleton.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {

  final nameController = TextEditingController();
  final priceController = TextEditingController();

  final productDb = ProductDb(getIt.get<AppDatabase>());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Product Name'),
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(labelText: 'Product Price'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              final name = nameController.text;
              final price = double.tryParse(priceController.text) ?? 0.0;

              if (name.isNotEmpty && price > 0) {
                await productDb.addProduct(ProductCompanion.insert(
                  name: Value(name), 
                  price: Value(price)
                ));
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please enter valid data')),
                );
              }
            },
            child: const Text('Add Product'),
          ),
        ],
      ),
    );
  }
}