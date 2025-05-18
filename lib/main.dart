import 'package:flutter/material.dart';
import 'package:test_app_flutter/screens/courses/course.screen.dart';
import 'package:test_app_flutter/screens/shops/splash.screen.dart';

void main() {
  runApp(CourseHomeApp());
}

class CourseHomeApp extends StatelessWidget {
  const CourseHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
     debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}