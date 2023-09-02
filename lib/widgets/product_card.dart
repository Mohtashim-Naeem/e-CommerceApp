import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../data.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.product, borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(20),
        height: 197,
        width: 167,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  AppImages.SplashIconSvg,
                  // height: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "325",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          fastfoods[0][0],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkestGrey),
                        ))
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 55,
              right: 0,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: AppColors.lightBlue,
                child: Icon(
                  Icons.add,
                  size: 13,
                  color: AppColors.white,
                ),
              ),
            )
          ],
        ));
  }
}
