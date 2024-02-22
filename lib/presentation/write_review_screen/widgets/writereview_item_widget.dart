import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/write_review_controller.dart';
import '../models/writereview_item_model.dart';

// ignore: must_be_immutable
class WritereviewItemWidget extends StatelessWidget {
  WritereviewItemWidget(
    this.writereviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WritereviewItemModel writereviewItemModelObj;

  var controller = Get.find<WriteReviewController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Obx(
        () => CustomImageView(
          imagePath: writereviewItemModelObj.rectangle!.value,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
          margin: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
      ),
    );
  }
}
