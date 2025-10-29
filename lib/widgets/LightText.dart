import 'package:flutter/material.dart';

class LightText extends StatelessWidget{
  final double size;
  final String text;
  final String font;
  final Color color;
  final TextOverflow textoverflow;
  LightText({
    super.key,
    this.textoverflow = TextOverflow.ellipsis,
    this.font = "font30",
    this.size = 20.0,
    this.color = Colors.white,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textoverflow,
      style: TextStyle(
        fontFamily: font,
        fontSize: size,
        color: color,
      ),
    );
  }
}