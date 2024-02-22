import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/off_item_model.dart';

// ignore: must_be_immutable
class OffItemWidget extends StatelessWidget {
  OffItemWidget(
    this.offItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OffItemModel offItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Align(
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
                    Obx(
                      () => CustomImageView(
                        imagePath: offItemModelObj.off!.value,
                        height: 110.v,
                        width: 140.h,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
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
                        child: Obx(
                          () => Text(
                            offItemModelObj.offer!.value,
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerRight,
              child: Obx(
                () => Text(
                  offItemModelObj.price!.value,
                  style: CustomTextStyles.labelLargeBlack900Medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
