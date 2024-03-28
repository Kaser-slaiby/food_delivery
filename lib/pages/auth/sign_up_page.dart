import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_text_field.dart';

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
        ],
      ),
    );
  }
}
