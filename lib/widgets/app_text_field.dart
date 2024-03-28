import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;

  const AppTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          boxShadow: [
            BoxShadow(
              blurRadius: Dimensions.height10,
              spreadRadius: Dimensions.height5,
              offset: Offset(1, 10),
              color: Colors.grey.withOpacity(0.2),
            ),
          ]),
      margin:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            icon,
            color: Colors.orange,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
          ),
        ),
      ),
    );
  }
}
