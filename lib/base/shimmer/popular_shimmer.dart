import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/app_constants.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_column.dart';

class PopularShimmer extends StatefulWidget {
  const PopularShimmer({super.key});

  @override
  State<PopularShimmer> createState() => _PopularShimmerState();
}

class _PopularShimmerState extends State<PopularShimmer> {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Stack(
    //       children: [
    //         Align(
    //           child: Shimmer.fromColors(
    //             baseColor: Colors.brown[50]!,
    //             highlightColor: Colors.orange[200]!,
    //             child: Container(
    //               height: Dimensions.height55 * 3.4,
    //               margin: EdgeInsets.only(
    //                   // top: Dimensions.height,
    //                   left: Dimensions.width30,
    //                   right: Dimensions.width30,
    //                   bottom: Dimensions.height20),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(Dimensions.radius30),
    //                   color: Colors.white,
    //                   boxShadow: [
    //                     BoxShadow(
    //                         color: Colors.grey,
    //                         blurRadius: 5.0,
    //                         offset: Offset(0, 5)),
    //                     // BoxShadow(
    //                     //     color: Colors.white,
    //                     //     offset: Offset(-5,0)
    //                     // ),
    //                     // BoxShadow(
    //                     //     color: Colors.green,
    //                     //     offset: Offset(5,0)
    //                     // )
    //                   ]),
    //               child: Container(
    //                 padding: EdgeInsets.only(
    //                     top: Dimensions.height15,
    //                     left: Dimensions.width15,
    //                     right: Dimensions.width15),
    //                 child: AppColumn(
    //                   text: "!",
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Align(
    //           alignment: Alignment.bottomCenter,
    //           child: Container(
    //             height: Dimensions.pageViewTextContainer,
    //             margin: EdgeInsets.only(
    //               top: Dimensions.height45 * 2.5,
    //               left: Dimensions.width30 * 1.8,
    //               right: Dimensions.width30 * 1.8,
    //             ),
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(Dimensions.radius30),
    //                 color: Colors.white,
    //                 boxShadow: [
    //                   BoxShadow(
    //                       color: Colors.grey,
    //                       blurRadius: 5.0,
    //                       offset: Offset(0, 5)),
    //                   // BoxShadow(
    //                   //     color: Colors.white,
    //                   //     offset: Offset(-5,0)
    //                   // ),
    //                   // BoxShadow(
    //                   //     color: Colors.green,
    //                   //     offset: Offset(5,0)
    //                   // )
    //                 ]),
    //             child: Container(
    //               padding: EdgeInsets.only(
    //                   right: Dimensions.height10,
    //                   top: Dimensions.height20,
    //                   left: Dimensions.height20,
    //                   bottom: Dimensions.height20),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   SizedBox(
    //                     height: Dimensions.height10,
    //                   ),
    //                   Container(
    //                     child: Shimmer.fromColors(
    //                         baseColor: Colors.brown[50]!,
    //                         highlightColor: Colors.orange[200]!,
    //                         child: Container(
    //                           decoration: BoxDecoration(
    //                               color: Colors.orange[200]!,
    //                               borderRadius: BorderRadius.circular(
    //                                   Dimensions.radius15)),
    //                           height: Dimensions.height15,
    //                           width: Dimensions.width15 * 9,
    //                         )),
    //                   ),
    //                   SizedBox(
    //                     height: Dimensions.height10,
    //                   ),
    //                   Container(
    //                     child: Shimmer.fromColors(
    //                         baseColor: Colors.brown[50]!,
    //                         highlightColor: Colors.orange[200]!,
    //                         child: Container(
    //                           decoration: BoxDecoration(
    //                               color: Colors.orange[200]!,
    //                               borderRadius: BorderRadius.circular(
    //                                   Dimensions.radius15)),
    //                           height: Dimensions.height15,
    //                           width: Dimensions.width15 * 13,
    //                         )),
    //                   ),
    //                   SizedBox(
    //                     height: Dimensions.height10,
    //                   ),
    //                   Container(
    //                     child: Shimmer.fromColors(
    //                         baseColor: Colors.brown[50]!,
    //                         highlightColor: Colors.orange[200]!,
    //                         child: Container(
    //                           decoration: BoxDecoration(
    //                               color: Colors.orange[200]!,
    //                               borderRadius: BorderRadius.circular(
    //                                   Dimensions.radius15)),
    //                           height: Dimensions.height15,
    //                           width: Dimensions.width15 * 18,
    //                         )),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //     SizedBox(
    //       height: Dimensions.height10,
    //     ),
    //   ],
    // );
    return Column(
      children: [
        Row(
          children: [
            Shimmer.fromColors(
              baseColor: Colors.brown[50]!,
              highlightColor: Colors.orange[200]!,
              child: Container(
                height: Dimensions.height55 * 5,
                width: Dimensions.width45 * 4,
                margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: Colors.brown[50],
                ),
              ),
            ),
            Shimmer.fromColors(
              baseColor: Colors.brown[50]!,
              highlightColor: Colors.orange[200]!,
              child: Container(
                height: Dimensions.height55 * 5,
                width: Dimensions.width45 * 4,
                margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: Colors.brown[50],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height5,
        ),
        Row(
          children: [
            Shimmer.fromColors(
              baseColor: Colors.brown[50]!,
              highlightColor: Colors.orange[200]!,
              child: Container(
                height: Dimensions.height10,
                width: Dimensions.width45 * 3,
                margin: EdgeInsets.only(left: Dimensions.width15 * 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: Colors.brown[50],
                ),
              ),
            ),
            SizedBox(
              width: Dimensions.width30 * 1,
            ),
            Shimmer.fromColors(
              baseColor: Colors.brown[50]!,
              highlightColor: Colors.orange[200]!,
              child: Container(
                height: Dimensions.height10,
                width: Dimensions.width45 * 2,
                margin: EdgeInsets.only(left: Dimensions.width15 * 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: Colors.brown[50],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        )
      ],
    );
  }
}
