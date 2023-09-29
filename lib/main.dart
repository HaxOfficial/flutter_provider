import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/example_one_provider.dart';
import 'package:flutter_provider/Provider/favourite_provider.dart';
import 'package:flutter_provider/Screens/count_example.dart';
import 'package:flutter_provider/Screens/example_one.dart';
import 'package:flutter_provider/Screens/favourite/favourite_screen.dart';
import 'package:flutter_provider/Screens/value_notify_listener.dart';
import 'package:provider/provider.dart';

import 'Provider/auth_provider.dart';
import 'Provider/count_provider.dart';
import 'Provider/theme_changer_provider.dart';
import 'Screens/dark_theme.dart';
import 'Screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Todo : This is for Single Provider
    // return ChangeNotifierProvider(
    //   create: (_) => CountProvider(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       // useMaterial3: true,
    //     ),
    //     home: const CountExample(),
    //   ),
    // );

    // final themeChanger = Provider.of<ThemeChanger>(context);

    // Todo : This is for Multi Provider
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final themeChanger = Provider.of<ThemeChanger>(context);
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: themeChanger.themeMode,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.red,
                  iconTheme: IconThemeData(color: Colors.green)),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                iconTheme: IconThemeData(color: Colors.pink),
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.teal
                )
              ),
              home: LoginScreen(),
            );
          },
        ));

    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     // useMaterial3: true,
    //   ),
    //   home: const ExampleOneScreen(),
    // );
  }
}
