import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  final String title;
  final String description;
  final String picture;
  final VoidCallback onPressed;
  const CardItem({super.key, required this.title, required this.picture, required this.description, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
       height: 285.0,
        width: 240.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(picture, width: double.infinity, height: 170, fit: BoxFit.cover),
        SizedBox(height: 10.0,),
        Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
        SizedBox(height: 6.0,),
        Text(description, style: TextStyle(fontSize: 11.0),),
        SizedBox(height: 6.0,),
        Row(
          children: [
            Icon(Icons.star, color: Colors.orange,),
            SizedBox(width: 2.0,),
            Text("4.8k", style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),),
            SizedBox(width: 2.0,),
            Text("(79k)", style: TextStyle(fontSize: 12.0, color: Colors.blueGrey),),
          ],
        )
      ],
          ),
        ),
      ),
    );
  }
}
