import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/auth/sign_up_page.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_text_field.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            Container(
              height: Dimensions.screenHeight * 0.30,
              child: Center(
                child: CircleAvatar(
                  radius: Dimensions.radius20 * 5,
                  backgroundImage: const AssetImage("assets/image/logo2.png"),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: Dimensions.width15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "The Best",
                    size: Dimensions.font26 + Dimensions.font16,
                  ),
                  BigText(
                    text: "Sign into your account",
                    size: Dimensions.font16,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            AppTextField(
                icon: Icons.email,
                hintText: "Email",
                textController: emailController),
            SizedBox(
              height: Dimensions.height20 + Dimensions.height5,
            ),
            AppTextField(
                icon: Icons.password_sharp,
                hintText: "Password",
                textController: passwordController),
            SizedBox(
              height: Dimensions.height55 / 2,
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Container(
              width: Dimensions.screenWidth / 2.5,
              height: Dimensions.screenHeight / 13,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(Dimensions.radius35),
              ),
              child: Center(
                child: BigText(
                  color: Colors.white,
                  text: "Sign In",
                  size: Dimensions.font20 + Dimensions.font16 / 2.5,
                ),
              ),
            ),
            SizedBox(height: Dimensions.height45),
            RichText(
              text: TextSpan(
                  text: "Dont\'t an account?",
                  style: TextStyle(
                      color: Colors.grey[500], fontSize: Dimensions.font20),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => SignUpPage(),
                            transition: Transition.zoom),
                      text: " Create",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: Dimensions.font20),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
