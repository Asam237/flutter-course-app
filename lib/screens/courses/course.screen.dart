import 'package:flutter/material.dart';
import 'package:test_app_flutter/components/button.component.dart';
import 'package:test_app_flutter/components/separator.component.dart';
import 'package:test_app_flutter/screens/courses/course-home.screen.dart';

class CourseScreenApp extends StatelessWidget {
  const CourseScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Course(),
    );
  }
}

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 4,
          child: Image.asset("assets/pictures/banner.png", width: double.infinity, fit: BoxFit.cover, height: double.infinity,),
        ),
        Flexible(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text("Congratulations!\nWelcome to Learnhub", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0), textAlign: TextAlign.center,),
                CSeparator(),
               Container(
                   child: Text("Revised curriculum with a more concise syllabus", style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,)),
                CSeparator(),
                CustomButton(color: Colors.black, text: "Next", onPressed: () {
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => CourseHome()));
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

