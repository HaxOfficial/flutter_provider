import 'package:flutter/material.dart';
import 'package:flutter_provider/Screens/count_example.dart';
import 'package:flutter_provider/Screens/home_screen.dart';
import 'package:flutter_provider/Screens/why_provider.dart';
import 'package:provider/provider.dart';

import 'Provider/count_provider.dart';
import 'Screens/stateful_widget_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        home: const CountExample(),
      ),
    );

    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     // useMaterial3: true,
    //   ),
    //   home: const CountExample(),
    // );
  }
}

