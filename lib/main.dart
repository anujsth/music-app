import 'package:appanuj/pages/home.dart';
import 'package:appanuj/pages/login.dart';
import 'package:appanuj/pages/music.dart';
import 'package:flutter/material.dart';
import 'package:appanuj/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/music': (context) => music(),
      },
      themeMode: ThemeMode.system,
      theme: themeData.lightTheme(context),
      darkTheme: themeData.darkTheme(context),
    );
  }
}
