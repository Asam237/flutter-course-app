import 'package:flutter/material.dart';
import 'package:test_app_flutter/components/button.component.dart';

class DetailShopScreen extends StatelessWidget {
  final String picture;
  final String title;
  final String price;

  const DetailShopScreen(
      {super.key,
      required this.picture,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            padding: EdgeInsets.only(top: 10.0),
            color: Color.fromRGBO(229, 209, 193, 1),
            child: Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                child: Image.asset(
                  picture,
                  height: 300.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 50.0,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "back".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 50.0,
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 310),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title.toUpperCase(),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          price,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/pictures/tshirt.png",
                      width: 40.0,
                      height: 40.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("color".toUpperCase()),
                        Text("gold".toUpperCase()),
                      ],
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        width: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("size".toUpperCase()),
                        Text("XL".toUpperCase()),
                      ],
                    )),
                  ],
                ),
                Divider(
                  height: 1,

                  thickness: 1,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500"
                      .toUpperCase(),
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10,),
                Text(
                  "see full".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 30.0,
                ),
                CustomButton(
                  text: "Add to chart".toUpperCase(),
                  onPressed: () {},
                  color: Colors.black,
                  txtColor: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
