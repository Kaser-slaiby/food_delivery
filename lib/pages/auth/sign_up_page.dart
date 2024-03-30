import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_text_field.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var signUpImages = ["t.png", "g.png", "f.png"];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
                  backgroundImage: AssetImage("assets/image/logo2.png"),
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
              width: Dimensions.screenWidth / 2.5,
              height: Dimensions.screenHeight / 13,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(Dimensions.radius35),
              ),
              child: Center(
                child: BigText(
                  color: Colors.white,
                  text: "Sign Up",
                  size: Dimensions.font20 + Dimensions.font16 / 2.5,
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20 + Dimensions.height45 / 10),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                text: "Have an account already?",
                style: TextStyle(
                    color: Colors.grey[500], fontSize: Dimensions.font20),
              ),
            ),
            SizedBox(
              height: Dimensions.height30 + Dimensions.height10,
            ),
            RichText(
              text: TextSpan(
                text: "Sign up using one of following methods",
                style: TextStyle(
                    color: Colors.grey[500], fontSize: Dimensions.font16),
              ),
            ),
            Wrap(
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: Dimensions.radius20 + Dimensions.height5,
                          backgroundImage:
                              AssetImage("assets/image/" + signUpImages[index]),
                          backgroundColor: Colors.white,
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
