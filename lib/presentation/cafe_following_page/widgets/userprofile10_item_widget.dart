import 'package:coffee_app/presentation/wishlist_screen/binding/wishlist_binding.dart';
import 'package:coffee_app/presentation/wishlist_screen/wishlist_screen1.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import '../controller/cafe_following_controller.dart';
import '../models/userprofile10_item_model.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  final item1;
  Userprofile10ItemWidget(

    //this.userprofile10ItemModelObj, 
    {
    Key? key, required this.item1,
  }) : super(
          key: key,
        );

  //Userprofile10ItemModel userprofile10ItemModelObj;

  var controller = Get.find<CafeFollowingController>();

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      child: SizedBox(
        
        width: 160.h,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.pink.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                    children: [
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child:
                        // Obx(
                         // () => 
                          CustomImageView(
                            //imagePath: userprofile10ItemModelObj.userImage!.value,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        //),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: //Obx( () => 
                          Text(
                            
                           item1['username'],
                           // userprofile10ItemModelObj.userName!.value,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                   //   ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                CustomElevatedButton(
                  height: 38.v,
                  width: 129.h,
                  text: "lbl_free_2".tr,
                  margin: EdgeInsets.only(left: 3.h),
                  buttonStyle: CustomButtonStyles.fillIndigoA,
                  buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold,
                ),
              ],
            ),
          ),
          
          
        ),
        
        
      ),
         onTap: (() {
                          
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductScreen(item:item))) ;   
                   Get.toNamed(AppRoutes.wishlistScreen1, arguments: item1);
                        }),
    );
    
    
  }
}
