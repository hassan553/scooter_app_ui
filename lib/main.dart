import 'package:flutter/material.dart';
import 'package:scooter_app_ui/peresntation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scooter App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xff55418E),
      ),
      home: const SplashView(),
    );
  }
}
