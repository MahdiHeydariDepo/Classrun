import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/university_page.dart';
import 'screens/major_page.dart';
import 'screens/final_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClassRun',
      theme: ThemeData(fontFamily: 'Vazirmatn'),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/universities': (context) => const UniversityPage(),
        '/majors': (context) => const MajorPage(),
        '/final': (context) => const FinalPage(),
      },
    );
  }
}
