import 'package:flutter/material.dart';
import 'package:test_app_flutter/components/button.component.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.only(top: 100.0),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromRGBO(237, 237, 237, 1)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("a contemporary fashion\nbrand that embodies sleek\nsophistication".toUpperCase(), style: TextStyle(),),
                    SizedBox(height: 14.0,),
                    Row(
                      children: [
                        Image.asset("assets/pictures/tshirt.png", width: 24.0, height: 24.0,),
                        SizedBox(width: 6.0,),
                        Image.asset("assets/pictures/jeans.png", width: 24.0, height: 24.0,),
                      ],
                    ),
                    SizedBox(height: 46.0,),
                    Align(
                      alignment: Alignment.center,
                        child: Text("mavero".toUpperCase(), style: TextStyle(fontSize: 80,),)),
                  ],
                ),
              ),
            ),
            flex: 3,
          ),
          Flexible(
            child: Stack(children: [
              ClipRRect(
                child: Image.asset(
                  "assets/pictures/wpic.jpg",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 100.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      CustomButton(
                        text: "SHOP MAN",
                        onPressed: () {},
                        txtColor: Colors.black,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      CustomButton(
                        text: "SHOP WOMAN",
                        onPressed: () {},
                        txtColor: Colors.black,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            flex: 4,
          ),
        ],
      ),
    );
  }
}
