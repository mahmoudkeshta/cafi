import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/app_export.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: theme.colorScheme.onPrimary.withOpacity(1),
        thumbColor: (value ?? false)
            ? theme.colorScheme.primary
            : appTheme.black900.withOpacity(0.25),
        activeColor: theme.colorScheme.onPrimary.withOpacity(1),
        onChanged: (value) {
          onChange(value);
        },
      );
}
