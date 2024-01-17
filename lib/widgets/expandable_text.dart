import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

import '../utils/dimensions.dart';

class ExpandabelText extends StatefulWidget {
  final String text;
  const ExpandabelText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandabelText> createState() => _ExpandabelTextState();
}

class _ExpandabelTextState extends State<ExpandabelText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(
        0,
        textHeight.toInt(),
      );
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              children: [
                SmallText(
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: Colors.cyan,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.cyan,
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
