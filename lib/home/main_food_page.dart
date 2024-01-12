

import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/%20big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import 'food_page_body.dart';
import '../utils/dimensions.dart';


class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(
      children: [
        Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
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
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black26,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        FoodPageBody(),
      ],
    ));
  }
}
