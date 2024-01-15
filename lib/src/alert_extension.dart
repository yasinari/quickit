import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';

extension AlertExtension on BuildContext {
  successAlert(
      {String? title,
      String? subtitle,
      Color? color,
      IconData? icon,
      Color? iconColor}) {
    if (mounted) {
      AchievementView(
        title: title ?? "Başarılı",
        subTitle: subtitle ?? "İşleminiz başarılı.",
        icon: Icon(
          icon ?? Icons.check,
          color: iconColor ?? Colors.white,
        ),
        color: color ?? Colors.green,
      ).show(this);
    }
  }

  failedAlert(
      {String? title,
      String? subtitle,
      Color? color,
      IconData? icon,
      Color? iconColor}) {
    if (mounted) {
      AchievementView(
        title: title ?? "Başarısız",
        subTitle: subtitle ?? "İşleminiz başarısız.",
        icon: Icon(
          icon ?? Icons.error,
          color: iconColor ?? Colors.white,
        ),
        color: color ?? Colors.red,
      ).show(this);
    }
  }
}
