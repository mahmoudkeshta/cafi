import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/custom_elevated_button.dart';
import '../sign_in_screen/binding/sign_in_binding.dart';
import '../sign_in_screen/sign_in_screen.dart';
import 'models/static.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
           
            Expanded(
              flex: 2,
              child: PageView.builder(
                
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) => Column(
                  children: [
                 
              
                     Container(
  height: 550.v,
  width: 600.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.h),
  ),
  child: Image.asset(
    onBoardingList[i].image!,
     // Adjust the fit according to your requirement
  ),
),

                    //const SizedBox(height: 60),
                    Container(
                      alignment: Alignment.topCenter,
                      //padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                         
                        onBoardingList[i].title!,
                      style: CustomTextStyles.displaySmallBold, 
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                    //  width: double.infinity,
                     // padding: const EdgeInsets.only(left: 20.0),
                    //  alignment: Alignment.topLeft,
                       width: 306.h,
                      child: Text(
                        onBoardingList[i].body!,
                        maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      //SizedBox(height: 10.h),

                    CustomElevatedButton(
                      
                      text: "lbl_get_start".tr,
                      margin: EdgeInsets.symmetric(horizontal: 14),
                      onPressed: (){
                        Get.offAll(SignInScreen(),binding: SignInBinding());
                      },
                    ),
                   // SizedBox(height: 10.h),

  // ignore: avoid_unnecessary_containers
  Container(
 
    child:
     
   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
    children: [
 ...List.generate(onBoardingList.length, (index) => AnimatedContainer(duration: const Duration(milliseconds: 900),
 width: 8,
 height: 13,
  padding: const EdgeInsets.only(right: 50.0, bottom: 50.0),
 decoration: const BoxDecoration(
   // ignore: unnecessary_const
   color: const Color(0xFFFF3951), 
  
   borderRadius: BorderRadius.all(
   Radius.circular(4), // Circular border radius with a radius of 4
                      ),
 ),
 
 )
 )

  ],
  ))
          ],
        ),
      ),
    );
  }
}