import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings Page'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'General'),
              Tab(text: 'Notifications'),
              Tab(text: 'Privacy'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('General Settings', style: Theme.of(context).textTheme.headlineMedium)),
            Center(child: Text('Notification Settings', style: Theme.of(context).textTheme.headlineMedium)),
            Center(child: Text('Privacy Settings', style: Theme.of(context).textTheme.headlineMedium)),
          ],
        ),
      ),
    );
  }
}