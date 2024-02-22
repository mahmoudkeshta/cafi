import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../models/widget2_item_model.dart';

// ignore: must_be_immutable
class Widget2ItemWidget extends StatelessWidget {
  Widget2ItemWidget(
    this.widget2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget2ItemModel widget2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 16.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          widget2ItemModelObj.widget!.value,
          style: TextStyle(
            color: appTheme.black900.withOpacity(0.5),
            fontSize: 25.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (widget2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.black900.withOpacity(0.05),
        selectedColor: appTheme.black900.withOpacity(0.05),
        shape: (widget2ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          widget2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
