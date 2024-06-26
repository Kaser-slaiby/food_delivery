import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/base/shimmer/popular_shimmer.dart';
import 'package:food_delivery/base/shimmer/recommended_shimmer.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/controllers/recommended_product_controller.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.87);
  var _currPageValue = 0.0;
  double _scalFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //slider section
      children: [
        Container(
          margin: EdgeInsets.only(left: Dimensions.width20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular food"),
              SizedBox(
                width: Dimensions.width10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return popularProducts.isLoaded
              ? Container(
                  height: Dimensions.pageView,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: pageController,
                      itemCount: popularProducts.popularProductList.length,
                      itemBuilder: (context, position) {
                        return _buildPageItem(position,
                            popularProducts.popularProductList[position]);
                      }),
                )
              : PopularShimmer();
        }),
        //dots
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return DotsIndicator(
            dotsCount: popularProducts.popularProductList.isEmpty
                ? 5
                : popularProducts.popularProductList.length,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: Colors.orangeAccent,
              spacing: const EdgeInsets.all(6.0),
              // color: Colors.cyan
            ),
          );
        }),
        //Popular text
        SizedBox(
          height: Dimensions.height5,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width45 / 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Recommended"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: SmallText(text: "Food menu"),
              )
            ],
          ),
        ),
        //list of food and images
        //images section

        //Recommended Food
        GetBuilder<RecommendedProductController>(builder: (rcommendedProduct) {
          return rcommendedProduct.isLoaded
              ? ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: rcommendedProduct.recommendedProductList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Get.toNamed(
                              RouteHelper.getRecommendedFood(index, "home"));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: Dimensions.width15,
                              right: Dimensions.width15,
                              bottom: Dimensions.height10),
                          height: Dimensions.height55 * 2,
                          child: Row(
                            children: [
                              Container(
                                height: Dimensions.listViewImgSize,
                                width: Dimensions.listViewImgSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius15),
                                  color: Colors.white24,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(AppConstants.BASE_URL +
                                        "/uploads/" +
                                        rcommendedProduct
                                            .recommendedProductList[index]
                                            .img!),
                                  ),
                                ),
                              ),
                              //text container
                              Expanded(
                                child: Container(
                                  height: Dimensions.listViewTextContSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight:
                                          Radius.circular(Dimensions.radius20),
                                      bottomRight:
                                          Radius.circular(Dimensions.radius20),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: Dimensions.width10,
                                        right: Dimensions.width10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        BigText(
                                            text: rcommendedProduct
                                                .recommendedProductList[index]
                                                .name!),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        SmallText(
                                            text:
                                                "With Chinese characteristics"),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconAndTextWidget(
                                                icon: Icons.circle_sharp,
                                                text: "Normal",
                                                iconColor: Colors.orangeAccent),
                                            // SizedBox(
                                            //   width: 20,
                                            // ),
                                            IconAndTextWidget(
                                                icon: Icons.location_on,
                                                text: "1.7KM",
                                                iconColor: Colors.cyanAccent),
                                            // SizedBox(
                                            //   width: 20,
                                            // ),
                                            IconAndTextWidget(
                                                icon: Icons.access_time_rounded,
                                                text: "32min",
                                                iconColor:
                                                    Colors.deepOrangeAccent),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
                  })
              : RecommendedShimmer();
        }),
      ],
    );
  }

  //To clear the value when you leave
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget _buildPageItem(int index, ProductModel popularProduct) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      // } else if (index == _currPageValue.floor() + 1) {
      //   var currScale =
      //       _scalFactor + (_currPageValue - index + 1) * (1 - _scalFactor);
      //   var currTrans = _height * (1 - currScale) / 2;
      //   matrix = Matrix4.diagonal3Values(1, currScale, 1);
      //   matrix = Matrix4.diagonal3Values(1, currScale, 1)
      //     ..setTranslationRaw(0, currTrans, 0);
      // } else if (index == _currPageValue.floor() - 1) {
      //   var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      //   var currTrans = _height * (1 - currScale) / 2;
      //   matrix = Matrix4.diagonal3Values(1, currScale, 1);
      //   matrix = Matrix4.diagonal3Values(1, currScale, 1)
      //     ..setTranslationRaw(0, currTrans, 0);
      // } else {
      //   var currScale = 0.8;
      //   matrix = Matrix4.diagonal3Values(1, currScale, 1)
      //     ..setTranslationRaw(0, _height * (1 - _scalFactor) / 2, 1);
    }

    // Add Stake for height Container
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteHelper.getPopularFood(index, "home"));
          },
          child: Container(
            height: Dimensions.height55 * 5,
            width: Dimensions.width45 * 4,
            margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              color: Colors.brown[50],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    AppConstants.BASE_URL + "/uploads/" + popularProduct.img!),
              ),
            ),
          ),
        ),
        Text(
          popularProduct.name!,
        )
      ],
    );
  }
}
