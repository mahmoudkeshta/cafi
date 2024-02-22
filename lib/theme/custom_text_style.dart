import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAmberA400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.amberA400,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
      );
  static get bodyLargeBlack900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyLargeBlack900_3 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodyLargeIndigoA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigoA700,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeOnPrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargebf000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XBF000000),
      );
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyLargeff2454f8 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF2454F8),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumOnPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
      );
  // Display text style
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displaySmallOnPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get displaySmallPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallPrimaryBold => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.62),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallRegular => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeAmber300 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.amber300,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeAmber30001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.amber30001,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get headlineLargeIndigoA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeMedium => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeOnPrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get headlineLargeRegular => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack900Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack900Medium =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack900Medium_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack900Medium_2 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack900Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBlack900_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get headlineSmallBlack900_2 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallIndigoA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPrimaryRegular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPrimary_1 => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallPrimary_2 => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.62),
      );
  static get headlineSmallRedA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLarge7f000000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0X7F000000),
      );
  static get titleLargeAmberA400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.amberA400,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack900Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack900SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleLargeBlack900_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get titleLargeBlack900_3 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
      );
  static get titleLargeBlack900_4 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get titleLargeBlack900_5 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
      );
  static get titleLargeIndigoA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryMedium => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimarySemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimaryMedium => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimarySemiBold_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargebf000000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XBF000000),
      );
  static get titleLargeff2454f8 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF2454F8),
      );
  static get titleMediumAmberA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amberA400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigoA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
