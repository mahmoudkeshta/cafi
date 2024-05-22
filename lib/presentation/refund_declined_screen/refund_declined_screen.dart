import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get package
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/refund_declined_controller.dart';

class RefundDeclinedScreen extends StatefulWidget {
  const RefundDeclinedScreen({Key? key}) : super(key: key);

  @override
  _RefundDeclinedScreenState createState() => _RefundDeclinedScreenState();
}

class _RefundDeclinedScreenState extends State<RefundDeclinedScreen> {
  late Timer timer;
  int minutes = 0;
  int seconds = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        seconds++;
        if (seconds == 60) {
          minutes++;
          seconds = 0;
        }
      });
    });
    // Add your logic for navigation after 1 minute here
    Future.delayed(Duration(minutes: 1), () {
      Get.toNamed(AppRoutes.signInScreen);
    });
  }

  @override
  void dispose() {
    timer.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 79.v),
              // Your UI widgets here
              Card(
                // Your Card widget here
                  clipBehavior: Clip.antiAlias,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 5.h,
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder74,
                ),
                child: Container(
                  height: 148.adaptSize,
                  width: 148.adaptSize,
                  padding: EdgeInsets.all(30.h),
                  
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder74,
                  
                  
                  ),
                     
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          child: Divider(
                            color: theme.colorScheme.primary,
                            
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        
                        child: SizedBox(
                          child: Divider(
                            color: theme.colorScheme.primary,
                            endIndent: 1.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
              ),
              SizedBox(height: 30.v),
              // Your other widgets here
              Opacity(
                opacity: 0.75,
                child: SizedBox(
                  width: 217.h,
                  child: Text(
                  //  "msg_your_refund_is_declined".tr,
                 // "Limit of logins allowed".tr,
                      '$minutes:$seconds',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Text(
              //  "msg_you_aren_t_follw".tr,
             //  "Limit of logins allowed_1".tr,
            "Limit of logins allowed".tr,
                style: CustomTextStyles.titleLargeBlack900_1,
                
                
              ),
              
            ],
          ),
        ),
        bottomNavigationBar: _buildBackHome(),
      ),
    );
  }

  Widget _buildBackHome() {
    return CustomElevatedButton(
      text: "lbl_login1".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 23.h,
        bottom: 34.v,
      ),
      onPressed: () {
        // Handle button press here
      },
    );
  }
}
