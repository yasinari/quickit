import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension NumberExtension on BuildContext {
  double get microValue => dynamicHeight(0.005);
  double get lowValue => dynamicHeight(0.01);
  double get mediumValue => dynamicWidth(0.03);
  double get highValue => dynamicHeight(0.06);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingOnlyTopMicro => EdgeInsets.only(top: microValue);
  EdgeInsets get paddingAllow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingSymmetricHorizontalStandart =>
      EdgeInsets.symmetric(horizontal: dynamicWidth(0.04));
  EdgeInsets get paddingSymmetricHorizontalExtra =>
      EdgeInsets.symmetric(horizontal: dynamicWidth(0.06));
  EdgeInsets get paddingSymmetricHorizontalLow =>
      EdgeInsets.symmetric(horizontal: dynamicWidth(0.02));
}

extension EmpytWidget on BuildContext {
  Widget get emptyWidget => const SizedBox.shrink();
}

extension ThemeExtension on BuildContext {
  Brightness get brightness => MediaQuery.of(this).platformBrightness;
}

extension DeviceExtension on BuildContext {
  bool get isTablet =>
      MediaQuery.of(this).size.shortestSide >= 600 &&
      MediaQuery.of(this).size.width < 1400;
  bool get isLargeTablet =>
      (MediaQuery.of(this).size.width >= 1200 &&
          MediaQuery.of(this).size.width < 1800) &&
      (MediaQuery.of(this).size.height >= 1900 &&
          MediaQuery.of(this).size.height < 2400);
  bool get isSmallPhone => MediaQuery.of(this).size.width <= 400;
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIos => Theme.of(this).platform == TargetPlatform.iOS;
  bool get isBigScreen => MediaQuery.of(this).size.width >= 1400;
  bool get isLightTheme =>
      Theme.of(this).brightness == Brightness.light ? true : false;
  bool get isDarkTheme =>
      Theme.of(this).brightness == Brightness.dark ? true : false;
  bool get keyboardIsOpen =>
      MediaQuery.of(this).viewInsets.bottom > 0 ? true : false;
}

extension SpaceExtension on BuildContext {
  Widget get lowHeightSpace => SizedBox(
        height: dynamicHeight(0.01),
      );
  Widget get mediumHeightSpace => SizedBox(
        height: dynamicHeight(0.03),
      );
  Widget get highHeightSpace => SizedBox(
        height: dynamicHeight(0.05),
      );

  Widget get lowWidthSpace => SizedBox(
        width: dynamicWidth(0.01),
      );
  Widget get mediumWidthSpace => SizedBox(
        width: dynamicWidth(0.03),
      );
  Widget get highWidthSpace => SizedBox(
        width: dynamicWidth(0.05),
      );

  Widget specificSpace(double height, double width) => SizedBox(
        height: dynamicHeight(height),
        width: dynamicWidth(width),
      );

  PreferredSizeWidget emptyAppBar(BuildContext context) => PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: context.theme.colorScheme.background,
          elevation: 0,
          toolbarHeight: 0,
        ),
      );
}
