import 'package:e_comerce_mini_project/views/splash_screen/onboarding.dart';
import 'package:flutter/material.dart';

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
      home: SplashScreen(),
    );
  }
}
