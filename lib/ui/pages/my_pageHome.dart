import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


import '../../themes/theme_services.dart';
import '../Img.dart';
import '../size_config.dart';
import '../theme.dart';
import '../widgets/my_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _imgesSlider(),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Get.isDarkMode ? blueClr : blueMClr),
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.lock_open_rounded,
                                size: 25,
                                color: Get.isDarkMode ? blueClr : blueMClr,
                              ),
                              const SizedBox(width: 5,),
                              Text('Request access', style: bodyStyle.copyWith( color: Get.isDarkMode ? blueClr : blueMClr,),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
            
                    Expanded(
                      child: GestureDetector(onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Get.isDarkMode ? blueClr : blueMClr),
                            color: Get.isDarkMode ? blueClr : blueMClr,
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.cube_box,
                                size: 25,
                                color: Get.isDarkMode ?  blueMClr : blueClr ,
                              ),
                              const SizedBox(width: 5,),
                              Text('Add delivery', style: bodyStyle.copyWith(color:Get.isDarkMode ?  blueMClr : blueClr),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text('Recent Actitvities',style: bodyStyle.copyWith(
                            color: Get.isDarkMode ? blueClr : blueMClr,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
            
                        },
                        child: Row(
                          children: [
                            Text('Sort By',style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),),
                            Icon(Icons.keyboard_arrow_down,color: Get.isDarkMode ? blueClr : blueMClr,),
                          ],
                        ),
                      ),
            
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                MyCard(),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(15),
                  //color: Get.isDarkMode ? darkGreyClr : Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Get.isDarkMode ? Themes.dark.primaryColor : Colors.white,
                    // Adjust the radius as needed
                  ),
            
                  child: Row(
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
                                Icons.person_add_alt,
                                color: primaryClr,
                                size: 25,
                              ),
                            ),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sub-user Added',
                                  style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
                                ),
                                Text('katerine',style: subTitleStyle.copyWith(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //const SizedBox(width: 10,),
                      Text(
                        '11:00 AM',
                        style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
                      ),
            
                    ],
                  ),
            
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(15),
                  //color: Get.isDarkMode ? darkGreyClr : Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color : Get.isDarkMode ? Themes.dark.primaryColor : Colors.white,
                    // Adjust the radius as needed
                  ),
            
                  child: Row(
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
                                Icons.currency_exchange,
                                color: primaryClr,
                                size: 25,
                              ),
                            ),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Your Subscription updated',
                                  style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
                                ),
                                Text('Basic Subscription',style: subTitleStyle.copyWith(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //const SizedBox(width: 10,),
                      Text(
                        '11:00 AM',
                        style: bodyStyle.copyWith(color: Get.isDarkMode ? blueClr : blueMClr,),
                      ),
            
                    ],
                  ),
            
                ),
              ],
            ),
          ),
          //color: Get.isDarkMode ? blueDarkClr : blueClr,
        ),
      ),
    );
  }

  AppBar _appBar(){
    return AppBar(
      backgroundColor: Get.isDarkMode ? Themes.dark.primaryColor : Colors.white,
      title: Get.isDarkMode
          ? Image.asset(Img.get('darkLogo.png'))
          : Image.asset(Img.get('logo.png')),

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _myContainerBar(),
        ),
        //const SizedBox(width: 10,),
        IconButton(
          onPressed: ()  {
             ThemeServices().switchTheme();
          },
          icon: Icon(
            Get.isDarkMode ?
            Icons.wb_sunny_outlined : Icons.nightlight_round_outlined,
            size: 24,
            color: Get.isDarkMode ? Colors.white : blueGreyClr,
          ),
        ),
        //const SizedBox(width: 10,),
        Icon(
          CupertinoIcons.bell,
          color: Get.isDarkMode ? Colors.white : blueGreyClr,
          size: 24,
        ),
        const SizedBox(width: 10,),
      ],
    );
  }

   _myContainerBar(){
    return Container(
      padding: const EdgeInsets.only(left: 5.0,right: 10.0,),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: primaryClr),
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: orangeWClr,
              // Adjust the radius as needed
            ),
            child: const Icon(
              Icons.currency_exchange,
              color: primaryClr,
              size: 20,
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Text('Basic',style: bodyStyle,)),
              Expanded(child: Text('Expires 07 Jan', style: body2Style,)),
            ],
          ),
          const SizedBox(width: 10,),
          const Icon(
            Icons.arrow_forward_ios,
            color: primaryClr,
            size: 15,
          ),

        ],
      ),
    );
  }

  Widget _imgesSlider(){
    return Column(
        children: [
          SizedBox(height: 30,),
          SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * .18,
            child: PageView.builder(
              //controller: _controller,
              itemCount: 3,
              //pageSnapping: true,
              onPageChanged: (index)=> setState(() => _currentIndex = index),
              itemBuilder: (context, index) => ClipRRect(
                borderRadius:  BorderRadius.circular(10),
                child : Image.asset(Img.get('SlidePic.PNG'),fit: BoxFit.fill,),
              ),
            ),
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildDot(0),
              buildDot(1),
              buildDot(2),
            ],
          )
        ],
    );
  }
  Container buildDot(index){
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index
            ? (Get.isDarkMode ? Colors.white : blueMClr)
            : (Get.isDarkMode ? blueMClr : greyClr),
      ),
    );
  }

}
