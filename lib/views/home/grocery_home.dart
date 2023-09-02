import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:e_comerce_mini_project/views/home/widgets/cart_indicator.dart';
import 'package:e_comerce_mini_project/views/home/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_comerce_mini_project/data.dart';
import '../../constants/string.dart';
import '../../functions.dart';
// import 'Cart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(
                top: height * 0.06,
                bottom: height * 0.02,
                left: width * 0.05,
                right: width * 0.05),
            color: AppColors.lightBlue,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hey, ${AppStrings.userName}',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                          fontSize: width * 0.06),
                    ),
                    Container(
                      width: 35,
                      height: 40,
                      // color: AppColors.lightGrey,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 8,
                            child: SvgPicture.asset(
                              AppImages.svgCart,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 1,
                            child: CartIndicator(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CustomTextfiedls(),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.06,
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'DELIVERY TO',
                            style: TextStyle(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w800,
                                color: AppColors.lightGrey,
                                fontSize: width * 0.03),
                          ),
                          Text(
                            'WITHIN       ',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: AppColors.lightGrey,
                                fontSize: width * 0.03),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppStrings.address,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                    fontSize: width * 0.03),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RotatedBox(
                                  quarterTurns: -1,
                                  child: Icon(
                                    size: 15.0,
                                    Icons.arrow_back_ios_new_rounded,
                                    color: AppColors.lightGrey,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                AppStrings.deliveryTime,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                    fontSize: width * 0.03),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RotatedBox(
                                  quarterTurns: -1,
                                  child: Icon(
                                    size: 15.0,
                                    Icons.arrow_back_ios_new_rounded,
                                    color: AppColors.lightGrey,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.2,
            child: GridView.builder(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                ),
                itemCount: BannerCard.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  childAspectRatio: width * 0.0021,
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) {
                  List<String> splitValues = BannerCard[index].split('\n');
                  String value1 = splitValues[0];
                  String value2 = splitValues[1];
                  String value3 = splitValues[2];

                  return Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(value1,
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: width * 0.08)),
                            Text(value2,
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: width * 0.08)),
                          ],
                        ),
                        Text(value3,
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.04)),
                      ],
                    ),
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                        color: index.isEven
                            ? AppColors.lightYellow
                            : AppColors.bannergrey,
                        borderRadius: BorderRadius.circular(25)),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Row(
              children: [
                Text(AppStrings.GroceryText,
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
              ],
            ),
          ),
          Container(
            height: 300,
            child: GridView.builder(
                padding: EdgeInsets.all(20),
                itemCount: fastfoods.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: height * 0.001,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  List splitted = fastfoods[index].split('\n');
                  var price = int.parse(splitted[1]);
                  String item = splitted[0];

                  return Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(74, 197, 205, 210),
                          borderRadius: BorderRadius.circular(20)),
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
                                  Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "${price.toString()}",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        item,
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
                            child: GestureDetector(
                              onTap: () {
                                // AddToCart(index: index);
                                setState(() {
                                  cart.add(fastfoods[index]);
                                });
                              },
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor: AppColors.lightBlue,
                                child: Icon(
                                  Icons.add,
                                  size: 13,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ));
                }),
          )
        ]),
      ),
    );
  }
}
