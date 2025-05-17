import 'package:flutter/material.dart';
import 'package:test_app_flutter/components/button.component.dart';
import 'package:test_app_flutter/components/separator.component.dart';

class CourseDetail extends StatelessWidget {
  final String picture;
  final String title;
  final String detail;
  const CourseDetail({super.key, required this.picture, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 80.0),
                color: Color.fromRGBO(246, 245, 248, 1),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      picture,
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                  top: 50.0,
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(width: 0.1),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.black,),
                ),
              )),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                margin: EdgeInsets.only(top: 320.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_rounded))
                      ],
                    ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Chapter 01",
                          style: TextStyle(color: Colors.white, fontSize: 11.0)),
                      Text("3h 19m",
                          style: TextStyle(color: Colors.white, fontSize: 11.0)),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(detail, style: TextStyle(fontSize: 14.0, color: Colors.blueGrey),),
                CSeparator(),
                CustomButton(text: "Next", onPressed: (){}),
                  ],
                ),
              )
            ])
    );
  }
}

