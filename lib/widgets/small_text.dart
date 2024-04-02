import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overflow;

  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          color: color,
          height: height,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: size),
    );
  }
}
