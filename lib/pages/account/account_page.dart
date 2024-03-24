import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
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
            )
          ],
        ),
      ),
    );
  }
}
