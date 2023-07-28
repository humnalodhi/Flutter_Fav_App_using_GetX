import 'package:flutter/material.dart';
import 'package:flutter_fav_app_with_getx/Screens/fav_app_with_getx.dart';
import 'package:flutter_fav_app_with_getx/Screens/ordinary_fav_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fav App with GetX',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: const FavAppWithGetX(),
    );
  }
}

