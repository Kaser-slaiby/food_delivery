import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controllers/cart_controller.dart';
import '../../utils/app_constants.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({super.key});

  @override
  Widget build(BuildContext context) {
    var getCartHistoryList = Get.find<CartController>().getCartHistoryList();
    Map<String, int> cartItemsPerOrder = Map();

    for (int i = 0; i < getCartHistoryList.length; i++) {
      if (cartItemsPerOrder.containsKey(getCartHistoryList[i].time)) {
        cartItemsPerOrder.update(
            getCartHistoryList[i].time!, (value) => ++value);
      } else {
        cartItemsPerOrder.putIfAbsent(getCartHistoryList[i].time!, () => 1);
      }
    }

    List<int> cartOrderTimeToList() {
      return cartItemsPerOrder.entries.map((e) => e.value).toList();
    }

    List<int> itemsPerOrder = cartOrderTimeToList();

    var ListCounter = 0;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height45 * 2,
            color: Colors.black26,
            width: double.maxFinite,
            padding: EdgeInsets.only(
              top: Dimensions.height20 * 3,
              // left: Dimensions.width15,
              // right: Dimensions.width15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BigText(
                  text: "Cart History",
                  color: Colors.white,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconColor: Colors.white,
                  backgroundColor: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                height: 120,
                margin: EdgeInsets.only(
                    left: Dimensions.width10,
                    right: Dimensions.width10,
                    top: Dimensions.height20),
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    children: [
                      for (int i = 0; i < itemsPerOrder.length; i++)
                        Container(
                          margin: EdgeInsets.only(bottom: Dimensions.height10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (() {
                                DateTime parseDate =
                                    DateFormat("yyyy-MM-dd HH:mm:ss").parse(
                                        getCartHistoryList[ListCounter].time!);
                                var inputDate =
                                    DateTime.parse(parseDate.toString());
                                var outputFormat =
                                    DateFormat("MM-dd-yyyy hh:mm a");
                                var outputDate = outputFormat.format(inputDate);
                                return BigText(text: outputDate);
                              }()),
                              SizedBox(
                                height: Dimensions.height5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Wrap(
                                    direction: Axis.horizontal,
                                    children: List.generate(itemsPerOrder[i],
                                        (index) {
                                      if (ListCounter <
                                          getCartHistoryList.length) {
                                        ListCounter++;
                                      }
                                      return index <= 2
                                          ? Container(
                                              height: 80,
                                              width: 80,
                                              margin: EdgeInsets.only(
                                                  right: Dimensions.width10,
                                                  bottom: Dimensions.height20),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions.radius15 /
                                                              2),
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          AppConstants
                                                                  .BASE_URL +
                                                              "/uploads/" +
                                                              getCartHistoryList[
                                                                      ListCounter -
                                                                          1]
                                                                  .img!))),
                                            )
                                          : Container();
                                    }),
                                  ),
                                  Container(
                                    height: 80,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SmallText(
                                          text: "Total",
                                          color: Colors.black,
                                        ),
                                        BigText(
                                            text: itemsPerOrder[i].toString() +
                                                " Items"),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions.width10,
                                              vertical: Dimensions.height5 / 2),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.radius15 / 3),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.orange)),
                                          child: SmallText(
                                            text: "one more",
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
