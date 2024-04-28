import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/account_widgets.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Center(
          child: BigText(
            text: "Profile",
            size: 20,
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            AppIcon(
              icon: Icons.person,
              backgroundColor: Colors.black12,
              size: Dimensions.height15 * 10,
              iconSize: Dimensions.height45 + Dimensions.height30,
              iconColor: Colors.white,
            ),
            SizedBox(height: Dimensions.height30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountWidgets(
                      bigText: BigText(
                        text: "00000000",
                      ),
                      appIcon: AppIcon(
                        icon: Icons.phone,
                        backgroundColor: Colors.orangeAccent,
                        size: Dimensions.height10 * 5,
                        iconSize: Dimensions.height10 * 5 / 2,
                        iconColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),
                    AccountWidgets(
                      bigText: BigText(
                        text: "www@gmail.com",
                      ),
                      appIcon: AppIcon(
                        icon: Icons.email,
                        backgroundColor: Colors.orangeAccent,
                        size: Dimensions.height10 * 5,
                        iconSize: Dimensions.height10 * 5 / 2,
                        iconColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),
                    AccountWidgets(
                      bigText: BigText(
                        text: "Fill in your address",
                      ),
                      appIcon: AppIcon(
                        icon: Icons.location_on,
                        backgroundColor: Colors.orangeAccent,
                        size: Dimensions.height10 * 5,
                        iconSize: Dimensions.height10 * 5 / 2,
                        iconColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),
                    AccountWidgets(
                      bigText: BigText(
                        text: "Message",
                      ),
                      appIcon: AppIcon(
                        icon: Icons.message_outlined,
                        backgroundColor: Colors.orangeAccent,
                        size: Dimensions.height10 * 5,
                        iconSize: Dimensions.height10 * 5 / 2,
                        iconColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),
                    GestureDetector(
                      onTap: () {
                        if (Get.find<AuthController>().userLoggedIn()) {
                          Get.find<AuthController>().clearSharedData();
                          Get.find<CartController>().clear();
                          Get.find<CartController>().clearCartHistory();
                          Get.offNamed(RouteHelper.getSignInPage());
                        } else {
                          print("Logout done");
                        }
                      },
                      child: AccountWidgets(
                        bigText: BigText(
                          text: "Logout",
                        ),
                        appIcon: AppIcon(
                          icon: Icons.logout,
                          backgroundColor: Colors.orangeAccent,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2,
                          iconColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
