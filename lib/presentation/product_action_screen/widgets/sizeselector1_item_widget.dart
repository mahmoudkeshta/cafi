import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_radio_button.dart';
import '../controller/product_action_controller.dart';
import '../models/sizeselector1_item_model.dart';

// ignore: must_be_immutable
class Sizeselector1ItemWidget extends StatelessWidget {
  Sizeselector1ItemWidget(
    this.sizeselector1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sizeselector1ItemModel sizeselector1ItemModelObj;

  var controller = Get.find<ProductActionController>();

  @override
  Widget build(BuildContext context) {
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
            Obx(
              () => Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: CustomRadioButton(
                  text: "lbl_small".tr,
                  value: "lbl_small".tr,
                  groupValue: sizeselector1ItemModelObj.radioGroup!.value,
                  textStyle: CustomTextStyles.titleLargeBlack900_2,
                  onChange: (value) {
                    sizeselector1ItemModelObj.radioGroup!.value = value;
                  },
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: CustomRadioButton(
                  text: "lbl_meduim".tr,
                  value: "lbl_meduim".tr,
                  groupValue: sizeselector1ItemModelObj.radioGroup1!.value,
                  textStyle: theme.textTheme.titleLarge,
                  onChange: (value) {
                    sizeselector1ItemModelObj.radioGroup1!.value = value;
                  },
                ),
              ),
            ),
            Obx(
              () => CustomRadioButton(
                text: "lbl_large".tr,
                value: "lbl_large".tr,
                groupValue: sizeselector1ItemModelObj.radioGroup2!.value,
                textStyle: CustomTextStyles.titleLargeBlack900_2,
                onChange: (value) {
                  sizeselector1ItemModelObj.radioGroup2!.value = value;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
