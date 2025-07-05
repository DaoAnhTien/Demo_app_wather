import 'package:flutter/material.dart';

class NavigatorUtils {
  NavigatorUtils._();
  static final instance = NavigatorUtils._();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  NavigatorState get rootNavigator =>
      Navigator.of(navigatorKey.currentContext!);
}
