import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/search_filter_controller.dart';
import '../models/productcard_item_model.dart';

class ProductcardItemWidget extends StatelessWidget {
//final Map<String, dynamic> item;
final item;
//final Map<String, dynamic> data = item.data() as Map<String, dynamic>;
  ProductcardItemWidget(
    {  required this.item,
    Key? key,
  }) : super(key: key);

 // var controller = Get.find<SearchFilterController>();

  @override
  Widget build(BuildContext context) {
   
   
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        width: 180.h,
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
                    //  () => 
                      item['productImages'] != "" ?
                      CustomImageView(
                        imagePath: item['productImages'],
                        height: 150.v,
                        width: 148.h,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.center,
                      ):CustomImageView(),
                   // ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 16.v,
                      width: 18.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 14.v,
                        right: 15.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              item['productName'],
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(
              height: 40.v,
              width: 150.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    // Obx(
                      //() =>
                       Text(
                       'p',
                        style: theme.textTheme.bodyLarge,
                      ),
                   // ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 40.v,
                      width: 150.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child:
                            // Obx(
                             // () =>
                               Text(
                                item['salePrice'],
                                style: theme.textTheme.bodyLarge,
                              ),
                           // ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 49.h),
                              child:
                              // Obx(
                                //() => 
                                Text(
                                  item['salePrice'],
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  //),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child:
                             //Obx(
                              //() => 
                              Text(
                                item['categoryName'],
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                         // ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: CustomRatingBar(
                              alignment: Alignment.bottomLeft,
                              ignoreGestures: true,
                              initialRating: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
         onTap: (() {
                          
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductScreen(item:item))) ;   
                   Get.toNamed(AppRoutes.productScreen,
                    arguments: item
                    );

               //   cart_controller().gotopro(item);
                        }),
    );
  }
}
