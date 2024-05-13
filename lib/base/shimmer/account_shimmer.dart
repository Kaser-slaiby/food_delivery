import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/dimensions.dart';
import '../../widgets/account_widgets.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class AccountShimmer extends StatefulWidget {
  const AccountShimmer({super.key});

  @override
  State<AccountShimmer> createState() => _AccountShimmerState();
}

class _AccountShimmerState extends State<AccountShimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: Dimensions.height30),
          Container(
            width: Dimensions.width45 * 24,
            height: Dimensions.height15 * 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: AssetImage("assets/image/loginn.png"))),
          ),
          SizedBox(height: Dimensions.height45),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width10, right: Dimensions.width10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height15 * 4,
                          width: Dimensions.width45 * 4,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height10,
                          width: Dimensions.screenWidth,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height15 * 4,
                          width: Dimensions.width45 * 3,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height10,
                          width: Dimensions.screenWidth,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height15 * 4,
                          width: Dimensions.width45 * 3.5,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height10,
                          width: Dimensions.screenWidth,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height15 * 4,
                          width: Dimensions.width45 * 5,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height10,
                          width: Dimensions.screenWidth,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height15 * 4,
                          width: Dimensions.width45 * 3,
                        )),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.brown[50]!,
                        highlightColor: Colors.orange[200]!,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[200]!,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15)),
                          height: Dimensions.height10,
                          width: Dimensions.screenWidth,
                        )),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
