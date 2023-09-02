import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:e_comerce_mini_project/views/home/grocery_home.dart';
import 'package:e_comerce_mini_project/views/OnboardingScreen/onboarding.dart';
import 'package:e_comerce_mini_project/views/home/widgets/cart_indicator.dart';
import 'package:e_comerce_mini_project/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'data.dart';

void main() {
  runApp(MiniEcommerceProject());
}

class MiniEcommerceProject extends StatelessWidget {
  const MiniEcommerceProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Manrope',
        ),
        home: Scaffold(
          body: GroceryHome(),
        ));
  }
}
