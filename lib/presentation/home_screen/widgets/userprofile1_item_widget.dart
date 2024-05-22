import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/userprofile1_item_model.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  final item;
  Userprofile1ItemWidget(
    //this.userprofile1ItemModelObj,
     {
    Key? key, required this.item,
  }) : super(
          key: key,
        );

 // Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    var shortUsername = item['username'].substring(0, 8);
    return item['isCafe'] == true ? Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder47,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Container(
                    height: 85.adaptSize,
                    width: 85.adaptSize,
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: 
                    //Obx(
                    //  () => 
                      CustomImageView(

                        imagePath:item['userImg'],
                        // userprofile1ItemModelObj.circleImage!.value,
                        
                        height: 85.adaptSize,
                        width: 85.adaptSize,
                        radius: BorderRadius.circular(
                          42.h,
                        ),
                        alignment: Alignment.center,
                      ),
                   // ),
                  ),
                ],
              ),
            ),
            Padding(
              
              padding: EdgeInsets.only(
                left: 8.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // Obx(
                  //  () => 
                  
                    Text(
                     shortUsername,
                      
                    //  userprofile1ItemModelObj.textStarbucks!.value,
                      style: CustomTextStyles.titleLargeMedium,
                    ),
                //  ),
                  SizedBox(height: 2.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 10.v,
                        width: 11.h,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 6.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child:
                        // Obx(
                        //  () => 
                          Text(
                           // userprofile1ItemModelObj.textRating!.value,
                           "7.1 Rating",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                     // ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 101.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.pink.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: 
                          //Obx(() => 
                            Text(
                              "Follow",
                             // userprofile1ItemModelObj.textFollow!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                        //  ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: 
                          //Obx(
                           // () =>
                             Text(
                              "10k",
                            //  userprofile1ItemModelObj.textFollowers!.value,
                              style: CustomTextStyles.bodyMediumBlack900_1,
                            ),
                          ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ):Align();
  }
}
