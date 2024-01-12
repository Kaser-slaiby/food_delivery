import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // height: 320 for Container =>
  // my screen height =890
  // Container height = 320
  // => x =890 / 320 = 3.0625
  static double pageView = screenHeight/3.0625;

  // height: 200 for Container(BoxDecoration) =>
  // my screen height =890
  // BoxDecoration height = 200
  // => x =890 / 200 = 4.45
  static double pageViewContainer = screenHeight/4.45;

  // width: 110 for Align =>
  // my screen width =411
  // Align width = 110
  // => x =411 / 110 = 3.73
  static double pageViewTextContainer = screenWidth/3.73;

  //dynamic height890 padding and margin
  static double height5 = screenHeight/178;
  static double height10 = screenHeight/89;
  static double height15 = screenHeight/95.33;
  static double height30 = screenHeight/29.666;
  static double height45 = screenHeight/19.777;
  static double height55 = screenHeight/16.88;



  //dynamic width411 padding and margin
  static double width5 = screenHeight/178;
  static double width10 = screenHeight/89;
  static double width15 = screenHeight/95.33;
  static double width20 = screenHeight/95.33;
  static double width30 = screenHeight/29.666;
  static double width45 = screenHeight/19.777;


  static double font20 = screenHeight/44.54;
  static double radius30 = screenHeight/28.13;
  static double radius35 = screenHeight/24.13;
  static double radius15 = screenHeight/95.27;
  static double iconSize = screenHeight/35.17;

}