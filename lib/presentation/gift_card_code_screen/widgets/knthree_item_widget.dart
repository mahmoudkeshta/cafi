import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../models/knthree_item_model.dart';

// ignore: must_be_immutable
class KnthreeItemWidget extends StatelessWidget {
  KnthreeItemWidget(
    this.knthreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KnthreeItemModel knthreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          knthreeItemModelObj.kNThree!.value,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 25.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (knthreeItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.black900.withOpacity(0.1),
        selectedColor: appTheme.black900.withOpacity(0.1),
        shape: (knthreeItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
        onSelected: (value) {
          knthreeItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
