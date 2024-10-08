import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          scrollPadding: EdgeInsets.only(
              bottom: MediaQuery.of(Get.context!).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.titleLargeOnPrimarySemiBold,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.titleLargeBlack900_5,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(9.h),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.black900.withOpacity(0.25),
              ),
            ),
        enabledBorder: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.black900.withOpacity(0.25),
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.h),
              borderSide: BorderSide(
                color: appTheme.black900.withOpacity(0.75),
                width: 1,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static UnderlineInputBorder get underLineBlack1 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.5),
        ),
      );
  static OutlineInputBorder get fillBlack => OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            20.h,
          ),
          topRight: Radius.circular(
            20.h,
          ),
          bottomRight: Radius.circular(
            20.h,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.25),
          width: 2,
        ),
      );
  static OutlineInputBorder get fillOnPrimary => OutlineInputBorder(
        borderRadius: BorderRadius.circular(22.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillBlackTL10 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBlackTL201 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.25),
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBlackTL202 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.75),
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBlackTL30 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.h),
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.25),
          width: 1,
        ),
      );
  static UnderlineInputBorder get underLineBlack2 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.62),
        ),
      );
  static UnderlineInputBorder get underLineBlack3 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.black900,
        ),
      );
}
