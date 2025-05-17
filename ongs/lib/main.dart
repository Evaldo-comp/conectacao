import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(OngApp());themeMode: ThemeMode.system;
}

class OngApp extends StatelessWidget {
  const OngApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConectAção', // centralize este  titulo
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
