import 'package:flutter/material.dart';

class AppColors {
  static const purple = Color(0xff5d5fef);
  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);
  static const demiGrey = Color(0xff868686);
  static const lightGrey = Color(0xffC4C4C4);
  static const dividerColor = Color(0xffeeeeee);
}

class AppShadows {
  static BoxShadow dropShadow = BoxShadow(
      blurRadius: 12,
      color: AppColors.black.withOpacity(.15),
      spreadRadius: 12,
      offset: const Offset(0, 0));
}
