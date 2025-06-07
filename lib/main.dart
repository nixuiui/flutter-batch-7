import 'package:flutter/material.dart';
import 'package:flutter_batch_7/consts/router_app.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/theme_bloc.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/theme_state.dart';
import 'package:flutter_batch_7/pages/day_7/data/local_storage/theme_local_storage.dart';
import 'package:flutter_batch_7/singleton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupSignleton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(ThemeLocalStorage(getIt.get()))..init(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state.themeMode,
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.blueAccent,
                actionsIconTheme: IconThemeData(
                  color: Colors.white, // Color for action icons
                ),
                titleTextStyle: TextStyle(
                  color: Colors.white, 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.black87,
                actionsIconTheme: IconThemeData(
                  color: Colors.white, // Color for action icons
                ),
                titleTextStyle: TextStyle(
                  color: Colors.white, 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            routes: routes,
            initialRoute: RouterApp.main,
          );
        }
      ),
    );
  }
}
