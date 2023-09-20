import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/example_one_provider.dart';
import 'package:flutter_provider/Screens/count_example.dart';
import 'package:flutter_provider/Screens/example_one.dart';
import 'package:provider/provider.dart';

import 'Provider/count_provider.dart';

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


    // Todo : This is for Multi Provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const ExampleOneScreen(),
      ),
    );

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
