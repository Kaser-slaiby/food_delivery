import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: Dimensions.width30,
            right: Dimensions.width30,
            top: Dimensions.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  iconSize: 22,
                  size: Dimensions.iconSize24 * 2,
                ),
                SizedBox(
                  width: Dimensions.width20 * 15,
                ),
                AppIcon(
                  icon: Icons.home_outlined,
                  iconSize: 22,
                  size: Dimensions.iconSize24 * 2,
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                  iconSize: 22,
                  size: Dimensions.iconSize24 * 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
