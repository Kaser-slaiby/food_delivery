import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius15),
                    topLeft: Radius.circular(Dimensions.radius15),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: "Sliver App Bar",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.cyan,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/pizza.jpeg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandabelText(
                    text: "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        " becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen, "
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        "becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        "becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        "becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        " becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen, "
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
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
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        " becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen, "
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        "becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        "becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        "becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen,"
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
                        "from combining with the dough, and producing a crust that can be frozen and reheated without"
                        " becoming rigid."
                        " There are frozen pizzas with raw ingredients and self-rising crusts."
                        "Pizza is sold fresh or frozen, "
                        "and whole or in portion-size slices."
                        "Methods have been developed to overcome"
                        "challenges such as preventing the sauce"
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
                  margin: EdgeInsets.only(
                    left: Dimensions.width10,
                    right: Dimensions.width10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 3,
              right: Dimensions.width20 * 3,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  backgroundColor: Colors.cyan,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroundColor: Colors.cyan,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    )),
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
        ],
      ),
    );
  }
}
