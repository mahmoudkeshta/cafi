import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../models/widget6_item_model.dart';

// ignore: must_be_immutable
class Widget6ItemWidget extends StatelessWidget {
  Widget6ItemWidget(
    this.widget6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget6ItemModel widget6ItemModelObj;

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
          widget6ItemModelObj.widget!.value,
          style: TextStyle(
            color: appTheme.black900.withOpacity(0.5),
            fontSize: 25.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (widget6ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.black900.withOpacity(0.05),
        selectedColor: appTheme.black900.withOpacity(0.05),
        shape: (widget6ItemModelObj.isSelected?.value ?? false)
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
          widget6ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
