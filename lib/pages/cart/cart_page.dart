import 'package:flutter/material.dart';
import 'package:food_delivery/base/no_data_page.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

import '../../controllers/cart_controller.dart';
import '../../controllers/popular_product_controller.dart';
import '../../controllers/recommended_product_controller.dart';
import '../../routes/route_helper.dart';
import '../../utils/app_constants.dart';
import '../../widgets/small_text.dart';

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
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconSize: 22,
                    size: Dimensions.iconSize24 * 2,
                    iconColor: Colors.orange,
                  ),
                ),
                SizedBox(
                  width: Dimensions.width20 * 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(() => MainFoodPage());
                      Get.toNamed(RouteHelper.getInitial());
                    },
                    child: AppIcon(
                      icon: Icons.home_outlined,
                      iconSize: 22,
                      size: Dimensions.iconSize24 * 2,
                      iconColor: Colors.orange,
                    ),
                  ),
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                  iconSize: 22,
                  size: Dimensions.iconSize24 * 2,
                  iconColor: Colors.orange,
                ),
              ],
            ),
          ),
          GetBuilder<CartController>(builder: (_cartController) {
            return _cartController.getItems.length > 0
                ? Positioned(
                    top: Dimensions.height30 * 4,
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                    bottom: 0,
                    child: Container(
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: GetBuilder<CartController>(
                            builder: (cartController) {
                          var _cartList = cartController.getItems;
                          return ListView.builder(
                              itemCount: _cartList.length,
                              itemBuilder: (_, index) {
                                return Container(
                                  height: Dimensions.height20 * 10,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                    bottom: Dimensions.height10,
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          var popularIndex = Get.find<
                                                  PopularProductController>()
                                              .popularProductList
                                              .indexOf(
                                                  _cartList[index].product!);
                                          if (popularIndex >= 0) {
                                            Get.toNamed(
                                              RouteHelper.getPopularFood(
                                                  popularIndex, "cartpage"),
                                            );
                                          } else {
                                            var recommendedIndex = Get.find<
                                                    RecommendedProductController>()
                                                .recommendedProductList
                                                .indexOf(
                                                    _cartList[index].product!);
                                            if (recommendedIndex < 0) {
                                              // Get.snackbar("History product",
                                              //     "Product review is not available for history products",
                                              //     backgroundColor: Colors.blueGrey,
                                              //     colorText: Colors.white);
                                            } else {
                                              Get.toNamed(
                                                RouteHelper.getRecommendedFood(
                                                    recommendedIndex,
                                                    "cartpage"),
                                              );
                                            }
                                          }
                                        },
                                        child: Container(
                                          width: Dimensions.width30 * 3,
                                          height: Dimensions.height30 * 4,
                                          // margin:
                                          //     EdgeInsets.only(bottom: Dimensions.height10),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  AppConstants.BASE_URL +
                                                      "/uploads/" +
                                                      cartController
                                                          .getItems[index]
                                                          .img!),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.height10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: Dimensions.height30 * 5,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              BigText(
                                                text: cartController
                                                    .getItems[index].name!,
                                                color: Colors.black,
                                              ),
                                              SmallText(
                                                text: "Spicy",
                                                color: Colors.black,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  BigText(
                                                    text: cartController
                                                        .getItems[index].price
                                                        .toString(),
                                                    color: Colors.red,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      top: Dimensions.height5,
                                                      bottom:
                                                          Dimensions.height5,
                                                      left: Dimensions.width15,
                                                      right: Dimensions.width15,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        Dimensions.radius15,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            // popularProduct
                                                            //     .setQuantity(false);
                                                            cartController.addItem(
                                                                _cartList[index]
                                                                    .product!,
                                                                -1);
                                                          },
                                                          child: Icon(
                                                            Icons.remove,
                                                          ),
                                                        ),
                                                        BigText(
                                                            text: _cartList[
                                                                    index]
                                                                .quantity
                                                                .toString()),
                                                        // popularProduct.inCartItems
                                                        //     .toString(),
                                                        // ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            // popularProduct
                                                            //     .setQuantity(true);
                                                            cartController.addItem(
                                                                _cartList[index]
                                                                    .product!,
                                                                1);
                                                          },
                                                          child: Icon(
                                                            Icons.add,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        }),
                      ),
                    ),
                  )
                : NoDataPage(text: "Your cart is empty!");
          })
        ],
      ),
      bottomNavigationBar: GetBuilder<CartController>(
        builder: (cartController) {
          return Container(
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
              child: cartController.getItems.length > 0
                  ? Row(
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
                              BigText(
                                text: "\$ " +
                                    cartController.totalAmount.toString(),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (Get.find<AuthController>().userLoggedIn()) {
                              print("Tapped");
                              cartController.addToHistory();
                            } else {
                              Get.toNamed(RouteHelper.sigIn);
                            }
                            ;
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              top: Dimensions.height5,
                              bottom: Dimensions.height5,
                              left: Dimensions.width15,
                              right: Dimensions.width15,
                            ),
                            child: BigText(
                              text: "Check out",
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                Dimensions.radius15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container());
        },
      ),
    );
  }
}
