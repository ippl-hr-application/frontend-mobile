import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/utils/size_utils.dart';
import 'package:insan_s_application2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGreen500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green500,
      );
  static get bodyLargeRedA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get bodyLargeRobotoWhiteA700 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumPoppinsBluegray900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumRobotoGray700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallRobotoBluegray400 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontSize: 8.fSize,
      );
  static get bodySmallRobotoGray500 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray500,
        fontSize: 8.fSize,
      );
  static get bodySmallRobotoIndigoA700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.indigoA700,
        fontSize: 8.fSize,
      );
  static get bodySmallRobotoWhiteA700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 8.fSize,
      );
  // Title style
  static get titleLargeMontserrat => theme.textTheme.titleLarge!.montserrat;
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
