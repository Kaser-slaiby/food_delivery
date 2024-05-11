import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/base/custom_loader.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/controllers/user_controller.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

import '../../controllers/cart_controller.dart';
import '../../routes/route_helper.dart';
import '../../utils/dimensions.dart';
import '../../widgets/account_widgets.dart';
import '../../widgets/app_icon.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<UserController>().getUserInfo();
      print("User has logged in");
    }
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown[50],
          title: BigText(
            text: "Profile",
            size: 20,
            color: Colors.grey[900],
          ),
        ),
        body: GetBuilder<UserController>(
          builder: (userController) {
            return _userLoggedIn
                ? (userController.isLoading
                    ? Container(
                        color: Colors.white,
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Container(
                              width: Dimensions.width45 * 244,
                              height: Dimensions.height15 * 14,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius20),
                                  image: DecorationImage(
                                      // fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/image/loginnn.png"))),
                            ),
                            SizedBox(height: Dimensions.height30),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    AccountWidgets(
                                      bigText: BigText(
                                        text: userController.userModel.name,
                                      ),
                                      appIcon: AppIcon(
                                        icon: Icons.person,
                                        backgroundColor: Colors.orangeAccent,
                                        size: Dimensions.height10 * 5,
                                        iconSize: Dimensions.height10 * 5 / 2,
                                        iconColor: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: Dimensions.height15),
                                    AccountWidgets(
                                      bigText: BigText(
                                        text: userController.userModel.email,
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
                                        text: userController.userModel.phone,
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
                                        if (Get.find<AuthController>()
                                            .userLoggedIn()) {
                                          Get.find<AuthController>()
                                              .clearSharedData();
                                          Get.find<CartController>().clear();
                                          Get.find<CartController>()
                                              .clearCartHistory();
                                          Get.offNamed(
                                              RouteHelper.getSignInPage());
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
                                          backgroundColor: Colors.redAccent,
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
                      )
                    : CustomLoader())
                : Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.maxFinite,
                              height: Dimensions.height55 * 7,
                              margin: EdgeInsets.only(
                                  left: Dimensions.width20,
                                  right: Dimensions.width20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius20),
                                  image: DecorationImage(
                                      // fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/image/loginn.png"))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.height55 * 3,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getSignInPage());
                              },
                              child: Container(
                                width: double.maxFinite,
                                height: Dimensions.height30 * 2,
                                margin: EdgeInsets.only(
                                    left: Dimensions.width20,
                                    right: Dimensions.width20),
                                decoration: BoxDecoration(
                                  color: Colors.brown[50],
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius15),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BigText(
                                      text: "You need to log in",
                                      color: Colors.black54,
                                      size: Dimensions.font26,
                                    ),
                                    SizedBox(width: Dimensions.width5 * 2),
                                    AppIcon(
                                      icon: Icons.login_sharp,
                                      iconColor: Colors.greenAccent,
                                      backgroundColor: Colors.white,
                                      size: Dimensions.radius30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
          },
        ));
  }
}
