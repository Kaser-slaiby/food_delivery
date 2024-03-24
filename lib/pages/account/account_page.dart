import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child: BigText(
            text: "Profile",
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
