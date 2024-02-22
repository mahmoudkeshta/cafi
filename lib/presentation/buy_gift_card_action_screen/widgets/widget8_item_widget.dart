import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../models/widget8_item_model.dart';

// ignore: must_be_immutable
class Widget8ItemWidget extends StatelessWidget {
  Widget8ItemWidget(
    this.widget8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget8ItemModel widget8ItemModelObj;

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
          widget8ItemModelObj.widget!.value,
          style: TextStyle(
            color: (widget8ItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onPrimary.withOpacity(1)
                : appTheme.black900.withOpacity(0.5),
            fontSize: 25.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (widget8ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.black900.withOpacity(0.05),
        selectedColor: theme.colorScheme.primary,
        shape: (widget8ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
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
          widget8ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
