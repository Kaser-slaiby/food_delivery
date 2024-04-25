import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:get/get.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    print("Loading stateeeeeeeeee " +
        Get.find<AuthController>().isLoading.toString());
    return Center(
      child: Container(
        height: Dimensions.height30 * 2,
        width: Dimensions.height30 * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height45),
          color: Colors.orangeAccent,
        ),
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
