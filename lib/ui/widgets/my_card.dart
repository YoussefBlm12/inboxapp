import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../size_config.dart';
import '../theme.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Get.isDarkMode ? Themes.dark.primaryColor : Colors.white,

        // Adjust the radius as needed
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: orangeWClr,
                        // Adjust the radius as needed
                      ),
                      child: const Icon(
                        CupertinoIcons.cube_box_fill,
                        color: primaryClr,
                        size: 25,
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hunger Station',style: subTitleStyle.copyWith(fontWeight: FontWeight.bold),),
                        Text(
                          'Muhammed Hamdi',
                          style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //const SizedBox(width: 10,),
              const Icon(
                Icons.arrow_forward_ios,
                color: primaryClr,
                size: 20,
              ),

            ],
          ),
          const SizedBox(height: 10,),
          Container(
            //margin: const EdgeInsets.symmetric(horizontal: 20),
            width: SizeConfig.screenWidth *0.90,
            height: 1,
            color: Get.isDarkMode ? blueClr : blueMClr,
          ),
          const SizedBox(height: 10,),
          Text(
            'Order ID #657864',
            style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,),
                decoration: const BoxDecoration(
                  color: greenWhiteClr,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.circle,color: greenClr,size: 7,),
                    const SizedBox(width: 5,),
                    Text('Delivered',style: bodyStyle.copyWith(color: greenClr),),

                  ],
                ),
              ),
              Text(
                '11:00 AM',
                style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
