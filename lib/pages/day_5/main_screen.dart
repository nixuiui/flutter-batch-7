import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_5/home_page.dart';
import 'package:flutter_batch_7/pages/day_6/pages/setting_screen.dart';
import 'package:flutter_batch_7/pages/day_7/pages/product_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        SettingScreen(),
        ProductPage(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Product',
          ),
        ],
      ),
    );
  }
}