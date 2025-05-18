import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? txtColor;
  const CustomButton({super.key, required this.text, required this.onPressed, this.color, this.txtColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Text(text, style: TextStyle(color: txtColor ?? Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
