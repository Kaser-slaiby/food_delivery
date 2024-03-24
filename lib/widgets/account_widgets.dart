import 'package:flutter/cupertino.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

import '../utils/dimensions.dart';

class AccountWidgets extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;

  AccountWidgets({super.key, required this.bigText, required this.appIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Dimensions.width20,
        top: Dimensions.height10,
        bottom: Dimensions.height10,
      ),
      child: Row(
        children: [appIcon, bigText],
      ),
    );
  }
}
