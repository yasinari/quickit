import 'package:flutter/cupertino.dart';

extension NavigationExtension on BuildContext {
  push(Widget page) => Navigator.push(
      this,
      CupertinoPageRoute(
        builder: (context) => page,
      ));
  pushReplacement(Widget page) => Navigator.pushReplacement(
      this, CupertinoPageRoute(builder: (context) => page));
  pushAndRemoveUntil(Widget page) => Navigator.pushAndRemoveUntil(
        this,
        CupertinoPageRoute(builder: (context) => page),
        (route) {
          return false;
        },
      );
  pop() => Navigator.pop(this);
}
