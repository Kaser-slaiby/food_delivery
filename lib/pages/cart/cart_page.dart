import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

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
          Positioned(
            top: Dimensions.height30 * 4,
            left: Dimensions.width30,
            right: Dimensions.width30,
            bottom: 0,
            child: Container(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Container(
                        height: Dimensions.height30 * 3,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          bottom: Dimensions.height10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: Dimensions.width30 * 3,
                              height: Dimensions.height30 * 4,
                              // margin:
                              //     EdgeInsets.only(bottom: Dimensions.height10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/image/pizza.jpeg"),
                                ),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius15),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.height10,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.cyan,
                                height: Dimensions.height30 * 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    BigText(
                                      text: "Bittet pizaa",
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
