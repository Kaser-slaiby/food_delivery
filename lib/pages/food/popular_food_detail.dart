import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import 'package:get/get.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  int pageId;
  PopularFoodDetail({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    print("page is id " +pageId.toString());
    print("product name is "+product.name.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/image/pizza.jpeg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => MainFoodPage());
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios)),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppCloumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  BigText(
                    text: "Introduce",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandabelText(
                        text: "Pizza is sold fresh or frozen, "
                            "and whole or in portion-size slices. "
                            "Methods have been developed to overcome "
                            "challenges such as preventing the sauce "
                            "from combining with the dough, and producing a crust that can be frozen and reheated without"
                            " becoming rigid."
                            " There are frozen pizzas with raw ingredients and self-rising crusts."
                            "Pizza is sold fresh or frozen, "
                            "and whole or in portion-size slices. "
                            "Methods have been developed to overcome "
                            "challenges such as preventing the sauce "
                            "from combining with the dough, and producing a crust that can be frozen and reheated without "
                            "becoming rigid."
                            " There are frozen pizzas with raw ingredients and self-rising crusts."
                            "Pizza is sold fresh or frozen, "
                            "and whole or in portion-size slices. "
                            "Methods have been developed to overcome "
                            "challenges such as preventing the sauce "
                            "from combining with the dough, and producing a crust that can be frozen and reheated without "
                            "becoming rigid."
                            " There are frozen pizzas with raw ingredients and self-rising crusts."
                            "Pizza is sold fresh or frozen, "
                            "and whole or in portion-size slices. "
                            "Methods have been developed to overcome "
                            "challenges such as preventing the sauce "
                            "from combining with the dough, and producing a crust that can be frozen and reheated without "
                            "becoming rigid."
                            " There are frozen pizzas with raw ingredients and self-rising crusts.",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height5,
          bottom: Dimensions.height5,
          right: Dimensions.width30,
          left: Dimensions.width30,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFECEFF1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius15 * 2),
            topRight: Radius.circular(Dimensions.radius15 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height5,
                bottom: Dimensions.height5,
                left: Dimensions.width15,
                right: Dimensions.width15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius15,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.remove,
                    // color: Colors.black87,
                  ),
                  BigText(text: "0"),
                  Icon(
                    Icons.add,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height5,
                bottom: Dimensions.height5,
                left: Dimensions.width15,
                right: Dimensions.width15,
              ),
              child: BigText(
                text: "\$10 | Add To Cart",
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
