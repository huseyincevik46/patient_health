import 'package:flutter/material.dart';
import 'screen/ListHome.dart';
import 'screen/doctor_home_screen.dart';
import 'screen/login_screen.dart';
import 'screen/patient_home_screen.dart';
import 'screen/signUp.dart';
import 'widget/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}
