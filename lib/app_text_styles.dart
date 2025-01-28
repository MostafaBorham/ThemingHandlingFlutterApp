import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle font36primarySemiBold(BuildContext context) => TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.primaryFixed,
  );
  static TextStyle font40PrimaryBold(BuildContext context) => TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).shadowColor,
  );
}