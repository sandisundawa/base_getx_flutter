import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/create_theme.dart';
import 'colors.dart';

ThemeData appTheme = createTheme(
  brightness: Brightness.light,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  primarySwatch: ColorValue.primarySwatch,
  background: ColorValue.backgroundColor,
  primaryText: Colors.black,
  secondaryText: Colors.white,
  accentColor: ColorValue.secondaryColor,
  divider: ColorValue.secondaryColor,
  buttonBackground: Colors.black38,
  buttonText: ColorValue.secondaryColor,
  disabled: ColorValue.secondaryColor,
  error: Colors.red,
);