import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/account_widgets.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child: BigText(
            text: "Profile",
            size: 20,
            color: Colors.white,
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
              backgroundColor: Colors.orangeAccent,
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
                        text: "Kaser",
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
                        text: "00000000",
                      ),
                      appIcon: AppIcon(
                        icon: Icons.phone,
                        backgroundColor: Colors.greenAccent,
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
                        backgroundColor: Colors.greenAccent,
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
