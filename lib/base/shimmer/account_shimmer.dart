import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../../widgets/account_widgets.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class AccountShimmer extends StatefulWidget {
  const AccountShimmer({super.key});

  @override
  State<AccountShimmer> createState() => _AccountShimmerState();
}

class _AccountShimmerState extends State<AccountShimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: Dimensions.width45 * 244,
            height: Dimensions.height15 * 14,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: AssetImage("assets/image/loginnn.png"))),
          ),
          SizedBox(height: Dimensions.height30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AccountWidgets(
                    bigText: BigText(
                      text: "userController.userModel.name",
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
                      text: "userController.userModel.email",
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
                      text: "userController.userModel.phone",
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
                  AccountWidgets(
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
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
