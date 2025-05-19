import 'package:flutter/material.dart';
import 'package:test_app_flutter/screens/shops/detail.screen.dart';

class HomeShopApp extends StatelessWidget {
  const HomeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 237, 237, 1),
      appBar: AppBar(
        titleSpacing: 20.0,
        actionsIconTheme: IconThemeData(size: 26.0),
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(237, 237, 237, 1),
        title: Row(
          children: [
            Text("woman".toUpperCase()),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 30,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: HomeShop(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Image.asset(
          "assets/pictures/wtshirt.png",
          width: 30.0,
          height: 30.0,
        ),
      ),
    );
  }
}

class HomeShop extends StatelessWidget {
  const HomeShop({super.key});

  List<Widget> _buildCard(BuildContext context) {
    final items = [
      {
        "picture": "assets/pictures/c1.png",
        "title": "asymmetric flowy skirt zw collection",
        "price": "\$89.90"
      },
      {
        "picture": "assets/pictures/c2.png",
        "title": "basic 100% wool high collar sweater",
        "price": "\$69.90"
      },
      {
        "picture": "assets/pictures/c3.png",
        "title": "faux fur jacket zw collection",
        "price": "\$159.90"
      },
      {
        "picture": "assets/pictures/c4.png",
        "title": "waxed cape aold zw collection",
        "price": "\$139.90"
      },
      {
        "picture": "assets/pictures/c2.png",
        "title": "basic 100% wool high collar sweater",
        "price": "\$69.90"
      },
      {
        "picture": "assets/pictures/c1.png",
        "title": "asymmetric flowy skirt zw collection",
        "price": "\$89.90"
      },
    ];
    return items.map((item) {
      return InkWell(
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (builder) => DetailShopScreen(
                    picture: item["picture"]!,
                    title: item["title"]!,
                    price: item["price"]!)));
          },
          child: cardItem(item["picture"]!, item["title"]!, item["price"]!));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Container(
            height: 34.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildItems("/// new", isFirst: true),
                buildItems("best sellers"),
                buildItems("jackets"),
                buildItems("blazers"),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 0.57,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [..._buildCard(context)],
          )
        ],
      ),
    );
  }
}

Widget buildItems(String title, {bool isFirst = false}) {
  return Container(
    margin: EdgeInsets.only(right: 4.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      color: isFirst ? Colors.black : Colors.white,
      border: Border.all(width: 1),
      borderRadius: BorderRadius.circular(100.0),
    ),
    child: Center(
        child: Text(
      title.toUpperCase(),
      style: TextStyle(color: isFirst ? Colors.white : Colors.black),
    )),
  );
}

Widget cardItem(String picture, String title, String price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Container(
          height: 600.0,
          color: Colors.white,
          child: Center(
            child: Image.asset(
              picture,
              width: 120.0,
              height: 140.0,
            ),
          ),
        ),
      ),
      SizedBox(height: 8),
      Text(
        title.toUpperCase(),
        style: TextStyle(fontSize: 10.8),
      ),
      Text(
        price,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.8),
      ),
    ],
  );
}
