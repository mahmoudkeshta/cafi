import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/cart_screen/controller/cart_controller.dart';
import 'package:coffee_app/presentation/product_screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/off_item_model.dart';

// ignore: must_be_immutable
class OffItemWidget extends StatelessWidget {
  final item;
  
  OffItemWidget(
   {
      
    Key? key, 
    required this.item,
  }) : super(
   
          key: key,
        );

 // OffItemModel offItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
     CollectionReference order = FirebaseFirestore.instance.collection('order');
      cart_controller cart_con=Get.put(cart_controller(),permanent: true);
     
    return 
   item['Discount'] != ""? GestureDetector(
     child: SizedBox(
        width: 140.h,
        child: 
          Align(
          alignment: Alignment.centerRight,
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.primaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Container(
                  height: 110.v,
                  width: 140.h,
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      //Obx(
                     //   () => 
                         item['productImages'] != "" ?
                        CustomImageView(
                          //imagePath: offItemModelObj.off!.value,
                          imagePath: item['productImages'],
                          height: 110.v,
                          width: 140.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                          alignment: Alignment.center,
                        ):CustomImageView(),
                    //  ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 65.h,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            bottom: 6.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL11,
                          ),
                          child:
                          // Obx(
                          //  () =>
                             Text(
                               item['Discount'],
                             // offItemModelObj.offer!.value,
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                          ),
                        ),
                     // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.center,
                child:
                // Obx(
                 // () => 
                  Text(
                   // offItemModelObj.price!.value,
                    item['productName'],
                    style: CustomTextStyles.labelLargeBlack900Medium,
                  ),
                  
                ),
                
             // ),
            ],
          ),
          
        ),
      ),
         onTap: (() {
                          
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductScreen(item:item))) ;   
                   Get.toNamed(AppRoutes.productScreen,
                    arguments: item
                    );
cart_controller().saveItem(Get.arguments);
               //   cart_controller().gotopro(item);
                        }),
   ): Container(
     
        //      child: Text('cd'),
   );
  }
}
