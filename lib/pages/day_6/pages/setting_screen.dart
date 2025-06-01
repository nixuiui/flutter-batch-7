import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/theme_bloc.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return SwitchListTile(
                  title: Text("Dark Mode"),
                  subtitle: Text("Click to switch theme"),
                  value: state.themeMode == ThemeMode.dark, 
                  onChanged: (val) {
                    context.read<ThemeBloc>().toggleTheme();
                  }
                );
              }
            ),
            Center(child: Text('Notification Settings', style: Theme.of(context).textTheme.headlineMedium)),
            Center(child: Text('Privacy Settings', style: Theme.of(context).textTheme.headlineMedium)),
          ],
        ),
      ),
    );
  }
}