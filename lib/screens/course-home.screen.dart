import 'package:flutter/material.dart';
import 'package:test_app_flutter/components/card-item.component.dart';
import 'package:test_app_flutter/components/section-title.component.dart';
import 'package:test_app_flutter/components/separator.component.dart';
import 'package:test_app_flutter/screens/course-detail.screen.dart';

class CourseHome extends StatelessWidget {
  const CourseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 246, 245, 1),
      body: Course(),
      bottomNavigationBar:
          BottomNavigationBar(fixedColor: Colors.black, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined), label: 'Learn'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }
}

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {

  List<Widget> _buildItemCourses () {
    final items = [
      {
        "title": "Google Data Analytics", "picture": "assets/pictures/item3.png", "description": "Google Professional Certificat...",
        "detail": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic facilis error, sunt vitae molestiae sed provident temporibus dolor obcaecati nulla explicabo at aperiam qui. Molestiae officiis distinctio fugiat, id, quis optio deleniti repellat praesentium, perspiciatis cupiditate sed impedit laboriosam dicta eligendi nostrum. Amet cupiditate eveniet praesentium aliquam quam, quis perferendis."
      },
      {
        "title": "Google Data Analytics", "picture": "assets/pictures/item2.png", "description": "Google Professional Certificat...",
        "detail": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic facilis error, sunt vitae molestiae sed provident temporibus dolor obcaecati nulla explicabo at aperiam qui. Molestiae officiis distinctio fugiat, id, quis optio deleniti repellat praesentium, perspiciatis cupiditate sed impedit laboriosam dicta eligendi nostrum. Amet cupiditate eveniet praesentium aliquam quam, quis perferendis."
      },
      {
        "title": "Google Data Analytics", "picture": "assets/pictures/banner.png", "description": "Google Professional Certificat...",
        "detail": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic facilis error, sunt vitae molestiae sed provident temporibus dolor obcaecati nulla explicabo at aperiam qui. Molestiae officiis distinctio fugiat, id, quis optio deleniti repellat praesentium, perspiciatis cupiditate sed impedit laboriosam dicta eligendi nostrum. Amet cupiditate eveniet praesentium aliquam quam, quis perferendis."
      },
      {
        "title": "Google Data Analytics", "picture": "assets/pictures/item2.png", "description": "Google Professional Certificat...",
        "detail": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic facilis error, sunt vitae molestiae sed provident temporibus dolor obcaecati nulla explicabo at aperiam qui. Molestiae officiis distinctio fugiat, id, quis optio deleniti repellat praesentium, perspiciatis cupiditate sed impedit laboriosam dicta eligendi nostrum. Amet cupiditate eveniet praesentium aliquam quam, quis perferendis."
      },
    ];
    return items.map((item) {
      return InkWell(
        borderRadius: BorderRadius.circular(12.0),
          onTap: (){
          Navigator.of(context).push(new MaterialPageRoute(builder: (context) => CourseDetail(picture: item["picture"]!, title: item["title"]!, detail: item["detail"]!)));
          },
          child: CardItem(title: item["title"]!, picture: item["picture"]!, description: item["description"]!, onPressed: (){}));
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: ListView(
        children: [
          Text("Explore",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          CSeparator(),
          CSectionTitle(title: "Topics", onPressed: (){}),
          CSeparator(),
          Container(
            height: 55.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCategory("Art and Humanities", isFirst: true),
                buildCategory("Business"),
                buildCategory("Computer Science"),
              ],
            ),
          ),
          CSeparator(),
          CSectionTitle(title: "Most Popular Certificates", onPressed: (){}),
          CSeparator(),
          Container(
            height: 280.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                 ..._buildItemCourses()
              ],
            ),
          ),
          CSeparator(),
          CSectionTitle(title: "Earn your Degree", onPressed: (){}),
          CSeparator(),
          Container(
            height: 280.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ..._buildItemCourses()
              ],
            ),
          ),
          CSeparator(),
        ],
      ),
    );
  }
}

Widget buildCategory(String title, {bool isFirst = false}) {
 return InkWell(
   onTap: (){},
   child: Container(
     padding: EdgeInsets.symmetric(horizontal: 12.0),
     margin: EdgeInsets.only(right: 10.0),
     decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
         color: isFirst ? Color.fromRGBO(204, 251, 135, 1) : Colors.white
     ),
     child: Center(
       child: Text(title, style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),),
     ),
   ),
 );
}