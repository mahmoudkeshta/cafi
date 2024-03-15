import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/menu_item_model.dart';

// ignore: must_be_immutable
class MenuItemWidget extends StatelessWidget {
 final item;
  MenuItemWidget(
    //this.menuItemModelObj, 
    {
    Key? key,  required this.item,
  }) : super(
          key: key,
        );

 // MenuItemModel menuItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            color: theme.colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: 150.adaptSize,
              width: 150.adaptSize,
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                
                 // Obx(
                    //() => 
                    CustomImageView(
                        imagePath: item['productImages'],
                   //  imagePath: menuItemModelObj.image1!.value,
                      height: 150.v,
                      width: 148.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                 // ),
                 
                 // Obx(
                    //() => 
                    CustomImageView(
                        imagePath: item['productImages'],
                   //   imagePath: menuItemModelObj.image2!.value,
                      height: 16.v,
                      width: 18.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 14.v,
                        right: 15.h,
                      ),
                    ),
                 // ),
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 12.v),
         // Obx(
           // () => 
            Text(
               item['productName'],
              
             // menuItemModelObj.text1!.value,
              style: theme.textTheme.titleMedium,
            ),
        //  ),
          Row(
            children: [
             // Obx(() =>
                 Text(
                   "Price",
                 // menuItemModelObj.text2!.value,
                  style: theme.textTheme.bodyLarge,
                ),
             // ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: //Obx( () => 
                Text(
                   item['fullPrice'],

                   // menuItemModelObj.text3!.value,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
             // ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: 
              // Obx(
                //  () =>
                   Text(
                     item['fullPrice'],
                 //   menuItemModelObj.text4!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
               // ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             //Obx(() =>
                 CustomImageView(
                    //imagePath: item['productImages'],
                //  imagePath: menuItemModelObj.image3!.value,
                  height: 10.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 6.v,
                  ),
                ),
             //),
             // Obx( () => 
                CustomImageView(
                    //imagePath: item['productImages'],
                 // imagePath: menuItemModelObj.image4!.value,
                  height: 10.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 1.v,
                    bottom: 6.v,
                  ),
                ),
              //),
             // Obx(() => 
              CustomImageView(
                 // imagePath: menuItemModelObj.image5!.value,
                  height: 10.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    left: 21.h,
                    top: 1.v,
                    bottom: 6.v,
                  ),
                ),
             // ),
             // Obx(() =>
              CustomImageView(
                 // imagePath: menuItemModelObj.image6!.value,
                  height: 10.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 1.v,
                    bottom: 6.v,
                  ),
                ),
            //  ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: 
                //Obx(
                //  () => 
                  Text(
                   "",
                   // menuItemModelObj.text5!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                //),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
