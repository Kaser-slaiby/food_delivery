import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import 'package:get/get.dart';

import '../../controllers/cart_controller.dart';
import '../../controllers/popular_product_controller.dart';
import '../../routes/route_helper.dart';
import '../../utils/app_constants.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  final int pageId;
  final String page;

  const PopularFoodDetail(
      {super.key, required this.pageId, required this.page});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>()
        .intProduct(product, Get.find<CartController>());
    // print("page is id " +pageId.toString());
    // print("product name is "+product.name.toString());
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
                    image: NetworkImage(
                        AppConstants.BASE_URL + "/uploads/" + product.img!),
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
                        if (page == "cartpage") {
                          Get.toNamed(RouteHelper.getCartPage());
                        } else {
                          Get.toNamed(RouteHelper.getInitial());
                        }
                      },
                      child: AppIcon(
                        icon: Icons.arrow_back_ios,
                        size: Dimensions.radius15 * 3.5,
                      )),
                  GetBuilder<PopularProductController>(builder: (controller) {
                    return GestureDetector(
                      onTap: () {
                        // Get.to(() => CartPage());
                        if (controller.totalItems >= 1) {
                          Get.toNamed(RouteHelper.getCartPage());
                        }
                      },
                      child: Stack(
                        children: [
                          AppIcon(
                            icon: Icons.shopping_cart_outlined,
                            size: Dimensions.radius15 * 3.5,
                            iconSize: 22,
                          ),
                          controller.totalItems >= 1
                              ? Positioned(
                                  right: 0,
                                  top: 0,
                                  child: AppIcon(
                                    icon: Icons.circle,
                                    size: Dimensions.radius15 * 1.6,
                                    iconColor: Colors.transparent,
                                    backgroundColor: Colors.orangeAccent,
                                  ),
                                )
                              : Container(),
                          Get.find<PopularProductController>().totalItems >= 1
                              ? Positioned(
                                  right: 5,
                                  top: 1,
                                  child: BigText(
                                    text: Get.find<PopularProductController>()
                                        .totalItems
                                        .toString(),
                                    size: 12,
                                    color: Colors.black,
                                  ))
                              : Container(),
                        ],
                      ),
                    );
                  }),
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
                    AppColumn(
                      text: product.name!,
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
                          text: product.description!,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: (popularProduct) {
            return Container(
              height: Dimensions.bottomHeightBar,
              padding: EdgeInsets.only(
                top: Dimensions.height5,
                bottom: Dimensions.height5,
                right: Dimensions.width15,
                left: Dimensions.width15,
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
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        Dimensions.radius15,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.orangeAccent,
                            backgroundColor: Colors.white,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius:
                            //       BorderRadius.circular(Dimensions.radius30),
                            // ),
                            fixedSize: Size(Dimensions.width10,
                                Dimensions.height10), // Make it responsive
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.height5),
                            // textStyle: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            popularProduct.setQuantity(false);
                          },
                          child: Icon(
                            color: Colors.black,
                            Icons.remove,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        BigText(
                          text: popularProduct.inCartItems.toString(),
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.orangeAccent,
                            backgroundColor: Colors.white,
                            fixedSize:
                                Size(Dimensions.width10, Dimensions.height10),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    Dimensions.height5), // Make it responsive
                          ),
                          onPressed: () {
                            popularProduct.setQuantity(true);
                          },
                          child: Icon(
                            color: Colors.black,
                            Icons.add,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     popularProduct.addItems(product);
                  //   },
                  //   child: Container(
                  //     padding: EdgeInsets.only(
                  //       top: Dimensions.height5,
                  //       bottom: Dimensions.height5,
                  //       left: Dimensions.width15,
                  //       right: Dimensions.width15,
                  //     ),
                  //     child: BigText(
                  //       text: "\$ ${product.price!} | Add To Cart",
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(
                  //         Dimensions.radius15,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.orangeAccent,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      popularProduct.addItems(product);
                    },
                    child: Container(
                      // padding: EdgeInsets.only(
                      //   top: Dimensions.height5,
                      //   bottom: Dimensions.height5,
                      //   left: Dimensions.width5,
                      //   right: Dimensions.width5,
                      // ),
                      child: BigText(
                        text: "\$ ${product.price!} | Add To Cart",
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
