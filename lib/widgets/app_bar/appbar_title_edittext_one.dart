import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTitleEdittextOne extends StatelessWidget {
  AppbarTitleEdittextOne({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 259.h,
        controller: controller,
        hintText: "lbl_search".tr,
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(1),
      ),
    );
  }
}
