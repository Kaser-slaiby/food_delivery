import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import ' big_text.dart';
import '../utils/dimensions.dart';
import 'icon_and_text_widget.dart';

class AppCloumn extends StatelessWidget {
  final String text;

  const AppCloumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: Colors.cyan,
                  size: 15,
                );
              }),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                iconColor: Colors.deepOrangeAccent),
          ],
        ),
      ],
    );
  }
}
