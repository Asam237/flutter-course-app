import 'package:flutter/material.dart';

class CSectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CSectionTitle({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
        InkWell(onTap: onPressed, child: Text("See all", style: TextStyle(fontSize: 12.0),)),
      ],
    );
  }
}
