import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void navigatorTo({context, required Widget page, bool withHistory = false}) {
  navigatorKey.currentContext!;
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
