import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_text_field.dart';
import 'package:food_delivery/widgets/big_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

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
          AppTextField(
              icon: Icons.email,
              hintText: "Email",
              textController: emailController),
          SizedBox(
            height: Dimensions.height20,
          ),
          AppTextField(
              icon: Icons.password_sharp,
              hintText: "Password",
              textController: passwordController),
          SizedBox(
            height: Dimensions.height20,
          ),
          AppTextField(
              icon: Icons.person,
              hintText: "Name",
              textController: nameController),
          SizedBox(
            height: Dimensions.height20,
          ),
          AppTextField(
              icon: Icons.phone,
              hintText: "Phone",
              textController: phoneController),
          SizedBox(
            height: Dimensions.height55 / 2,
          ),
          Container(
            width: Dimensions.screenWidth / 2,
            height: Dimensions.screenHeight / 10,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(Dimensions.radius35),
            ),
            child: Center(
              child: BigText(
                color: Colors.white,
                text: "Sign Up",
                size: Dimensions.font20 + Dimensions.font16 / 2,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
        ],
      ),
    );
  }
}
