import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/app_constants.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class RecommendedShimmer extends StatefulWidget {
  const RecommendedShimmer({super.key});

  @override
  State<RecommendedShimmer> createState() => _RecommendedShimmerState();
}

class _RecommendedShimmerState extends State<RecommendedShimmer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
                left: Dimensions.width15,
                right: Dimensions.width15,
                bottom: Dimensions.height10),
            child: Row(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.brown[100]!,
                  highlightColor: Colors.orange[100]!,
                  child: Container(
                    height: Dimensions.listViewImgSize,
                    width: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.white24,
                    ),
                  ),
                ),
                //text container
                Expanded(
                  child: Container(
                    height: Dimensions.listViewTextContSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        bottomRight: Radius.circular(Dimensions.radius20),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.width10, right: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Shimmer.fromColors(
                              baseColor: Colors.brown[50]!,
                              highlightColor: Colors.orange[200]!,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange[200]!,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius15)),
                                height: Dimensions.height10,
                                width: Dimensions.width15 * 13,
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
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius15)),
                                height: Dimensions.height10,
                                width: Dimensions.width15 * 8,
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
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius15)),
                                height: Dimensions.height10,
                                width: Dimensions.width15 * 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
