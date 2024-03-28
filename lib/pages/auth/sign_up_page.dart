import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.screenHeight * 0.05,
          ),
          Container(
            height: Dimensions.screenHeight * 0.30,
            child: Center(
              child: CircleAvatar(
                radius: Dimensions.radius20 * 4,
                backgroundImage: AssetImage("assets/image/Logo1.png"),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Container(
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
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.email,
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
          ),
        ],
      ),
    );
  }
}
