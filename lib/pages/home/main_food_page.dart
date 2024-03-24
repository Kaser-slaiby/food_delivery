import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

import '../../controllers/popular_product_controller.dart';
import '../../controllers/recommended_product_controller.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  Future<void> _loadResource() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
  }

  @override
  Widget build(BuildContext context) {
    // print("current height is " + MediaQuery.of(context).size.height.toString());
    return RefreshIndicator(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.height55, bottom: Dimensions.height15),
                    padding: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            BigText(
                              text: 'Syria',
                            ),
                            Row(
                              children: [
                                SmallText(
                                  text: 'Hama',
                                  color: Colors.black54,
                                ),
                                Icon(Icons.arrow_drop_down_rounded)
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width45,
                          height: Dimensions.height45,
                          child: Icon(Icons.search, color: Colors.white),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                            color: Colors.black26,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
            )
          ],
        ),
        onRefresh: _loadResource);
  }
}
