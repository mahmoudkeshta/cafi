import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_radio_button.dart';
import '../controller/product_controller.dart';
import '../models/sizeselector_item_model.dart';

// ignore: must_be_immutable
class SizeselectorItemWidget extends StatelessWidget {
    final  item;
    String? value;
   
  SizeselectorItemWidget(
    
   // this.sizeselectorItemModelObj,  
    {
      required this.item, 
    Key? key,
    
  }) : super(
          key: key,
          
        );

 // SizeselectorItemModel sizeselectorItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
         CollectionReference order = FirebaseFirestore.instance.collection('order');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_size".tr,
          style: CustomTextStyles.headlineSmallBlack900Medium,
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Obx(
             // () =>
               Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: CustomRadioButton(
                  text:  "lbl_small".tr,
                  
             
            // value:item[],//"lbl_small".tr,
                  groupValue:value,
                // groupValue: sizeselectorItemModelObj.radioGroup!.value,
                  textStyle: CustomTextStyles.titleLargeBlack900_2,
                  onChange: (val) {
                    value=val;
                    print(value);
                 //   sizeselectorItemModelObj.radioGroup!.value = value;
                  },
                ),
           //   ),
            ),
           // Obx(
           //   () =>
               Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: CustomRadioButton(
                  text: "lbl_meduim".tr,
             // value: item[1]['size'],
               //   value: "lbl_meduim".tr,
                    groupValue:value,
               //   groupValue: sizeselectorItemModelObj.radioGroup1!.value,
                  textStyle: theme.textTheme.titleLarge,
                  onChange: (val) {
                       value=val;
                    print(value);
                 //   sizeselectorItemModelObj.radioGroup1!.value = value;
                  },
                ),
              ),
           // ),
           // Obx( () => 
              CustomRadioButton(
                text: "lbl_large".tr,
              //  value: "lbl_large".tr,
        //   value: item['size'][2],
                  groupValue:value,
              //  groupValue: sizeselectorItemModelObj.radioGroup2!.value,
                textStyle: CustomTextStyles.titleLargeBlack900_2,
                onChange: (val) {
                   value=val;
                    print(value);
              //    sizeselectorItemModelObj.radioGroup2!.value = value;
                },
              ),
          //  ),
          ],
        ),
      ],
    );
  }
}
