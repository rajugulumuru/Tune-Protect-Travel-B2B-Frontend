// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color identifierTextColor;
  late Color creditValue;
  late Color outstandingValue;
  late Color tabDimTextColor;
  late Color tabCompletedText;
  late Color background2;
  late Color buttonDisableColor;
  late Color backgroundComponents;
  late Color overlay;
  late Color backgroundGradientDark;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF4B39EF);
  late Color secondaryColor = const Color(0xFF39D2C0);
  late Color tertiaryColor = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color identifierTextColor = Color(0xFFFF0000);
  late Color creditValue = Color(0xFF0A8080);
  late Color outstandingValue = Color(0xFF130000);
  late Color tabDimTextColor = Color(0xFFD0CCCC);
  late Color tabCompletedText = Color(0xFF0971B3);
  late Color background2 = Color(0xFFFFF2F2);
  late Color buttonDisableColor = Color(0xFFFFE6E6);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color overlay = Color(0xB3FFFFFF);
  late Color backgroundGradientDark = Color(0xFFFF4D4D);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Montserrat';
  TextStyle get title1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title2Family => 'Montserrat';
  TextStyle get title2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get title3Family => 'Montserrat';
  TextStyle get title3 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Montserrat';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Montserrat';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Montserrat';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Montserrat';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Montserrat';
  TextStyle get title1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title2Family => 'Montserrat';
  TextStyle get title2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get title3Family => 'Montserrat';
  TextStyle get title3 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Montserrat';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Montserrat';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Montserrat';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Montserrat';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Montserrat';
  TextStyle get title1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title2Family => 'Montserrat';
  TextStyle get title2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get title3Family => 'Montserrat';
  TextStyle get title3 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Montserrat';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Montserrat';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Montserrat';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Montserrat';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Montserrat',
        color: Color(0xFF130000),
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
