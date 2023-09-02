// import 'package:flutter/material.dart';

// import '../../../constants/colors.dart';

// class DiscountBanner extends StatelessWidget {
//   const DiscountBanner({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//                     padding: EdgeInsets.all(10),
//                     alignment: Alignment.center,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(value1,
//                                 style: TextStyle(
//                                     color: AppColors.black,
//                                     fontWeight: FontWeight.w800,
//                                     fontSize: width * 0.08)),
//                             Text(value2,
//                                 style: TextStyle(
//                                     color: AppColors.black,
//                                     fontWeight: FontWeight.w300,
//                                     fontSize: width * 0.08)),
//                           ],
//                         ),
//                         Text(value3,
//                             style: TextStyle(
//                                 color: AppColors.black,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: width * 0.04)),
//                       ],
//                     ),
//                     height: 10,
//                     width: 20,
//                     decoration: BoxDecoration(
//                         color: index.isEven
//                             ? AppColors.lightYellow
//                             : AppColors.bannergrey,
//                         borderRadius: BorderRadius.circular(25)),
//                   );;
//   }
// }