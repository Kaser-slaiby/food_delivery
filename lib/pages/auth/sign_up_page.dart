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
            margin: EdgeInsets.only(
                left: Dimensions.width5, right: Dimensions.width5),
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
                    borderSide: BorderSide(width: 1.0, color: Colors.grey)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
