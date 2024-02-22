import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/request_refund_action_controller.dart';
import '../models/requestrefundaction_item_model.dart';

// ignore: must_be_immutable
class RequestrefundactionItemWidget extends StatelessWidget {
  RequestrefundactionItemWidget(
    this.requestrefundactionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RequestrefundactionItemModel requestrefundactionItemModelObj;

  var controller = Get.find<RequestRefundActionController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: requestrefundactionItemModelObj.rectangle!.value,
        height: 130.v,
        width: 166.h,
        radius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
        ),
      ),
    );
  }
}
