import 'dart:collection';

import 'package:coffee_app/presentation/cart_screen/controller/ProductController%20.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:flutter/widgets.dart';
import '../controller/cart_controller.dart';
import '../models/userprofile4_item_model.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {

   // final int quantity;
 /**
  *     final CartController controller1;
   final CartItem product;
  final int quantity;
  final int index;
 
  */
  
    
     FirebaseAuth _auth=FirebaseAuth.instance;
 
    
     cart_controller cart_con=Get.put(cart_controller(),permanent: true);
  final item;
 // final CartController5 cartController5 = Get.find<CartController5>();
    CartController5 cartController5=Get.put(CartController5(),permanent: true);
   // CartController cartController=Get.put(CartController(),permanent: true);
  Userprofile4ItemWidget(
    //this.userprofile4ItemModelObj,
     {
      required this.item,
      /**
       * required this.product,
        required this.quantity,
       */
     
    /**
     *     required this.controller1,
    required this.product,
    required this.quantity,
    required this.index,
     */
      
 
      
    Key? key,  //required this.item,
  }) : super(
         key: key,
        );

//  Userprofile4ItemModel userprofile4ItemModelObj;

 // var controller = Get.find<CartController>();
  final cart_controller controller= Get.find();
  @override
  Widget build(BuildContext context) {
     // final ProductController productController = Get.find();
     final itemId =item['productId'];
    return 
    
    Container(
      
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: 
      
        GetX<cart_controller>(
         init: cart_controller(),
        builder: (Controller) {
       
          
       return    Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder40,
                      ),
                      child: //GetBuilder<CartController>(builder: (Controller) => 
                      // Obx(   () =>
                         CustomImageView(
                        
                          imagePath://product.productImages, //productController.products[index].productImages,
                           //cartController5.itemData1.value,
                    //   ' ${cartController5.itemData1}',
                   item['productImages'],
                   //   product.productImages,
                         //  "${cart_con.productImages(item)}",
                          //userprofile4ItemModelObj.image!.value,
                          height: 80.v,
                          width: 77.h,
                          radius: BorderRadius.circular(
                            40.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        // )
                      //),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 17.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        //  Obx(
                          //  () => 
                          //  Container(
                            //  child:GetBuilder<CartController>
                            //  (
                           //     init: CartController(),
                             //   builder: (Controller) => 
                              
                               Text(
                              //   productController.products[index].productName,
                             //  ' ${cartController5.itemData}',
                                                  item['productName'],
                                                //    product.productName,
                                       //              "${cart_con.productName()}",
                               // userprofile4ItemModelObj.title!.value, 
                                style: theme.textTheme.titleLarge,
                              ),
                            //  ),
                      //      ),
                         // ),
                          SizedBox(height: 1.v),
                         // Obx(
                           // () => 
                           // Container(
                            //  child: GetBuilder<CartController>(builder: (Controller) => 
                             Text(
                               //' ${cartController5.itemData2}',
                                   //
                                  item ['fullPrice'],
//productController.products[index].fullPrice,
                                // product.fullPrice,
                                //userprofile4ItemModelObj.price!.value,
                                 // "${cart_con.fullPrice(item)}",
                                style: theme.textTheme.titleLarge,
                            //  ),
                            ),
                        //  ),
                           // ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 27.h,
                        top: 35.v,
                        bottom: 21.v,
                      ),
                      child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        child:  Icon(
                  Icons.remove_circle,
                  size: 20,
                 ),
                 onTap: (){
                 // controller.removeProduct(product);
                 Controller.decrement(itemId);
                    
                 },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 27.v,
                        bottom: 14.v,
                      ),
                      child: //Obx(
                     //   () => 
                      //  item['uid'] == _auth.currentUser!.uid.toString()?
                        Text(
                         // userprofile4ItemModelObj.quantity!.value,
                 //      '$quantity',
                      //'2',
                      ' ${controller.getProductCounter(itemId).value}',
                   //   '  ${Controller.m.value.toString()} ',
                  
                          style: CustomTextStyles.headlineSmallBlack900Medium,
                        )//:Container(),
                     // ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 35.v,
                  bottom: 21.v,
                ),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  onTap: () {
                      Controller.increment(itemId);
                // controller.addProduct(product);
                  },
                  child:   Icon(
                  Icons.add_circle,
                  size: 20,
                 ),
                
                  
                ),
                
              ),
            ],
          );
        }
      ),
      
    );
  }
}
