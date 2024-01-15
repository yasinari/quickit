import 'package:flutter/material.dart';
import 'package:quickit/src/context_extension.dart';

extension DialogExtension on BuildContext {
  Future<dynamic>? showCustomDialog({
    String? title,
    String? content,
    bool? showIcon,
    IconData? icon,
  }) =>
      _showCustomDialog(
          title: title, content: content, showIcon: showIcon, icon: icon);

  Future<dynamic>? _showCustomDialog({
    String? title,
    String? content,
    bool? showIcon,
    IconData? icon,
  }) async {
    return showDialog<String>(
      context: this,
      builder: (BuildContext context) => AlertDialog(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          leading: showIcon == true
              ? Icon(
                  icon ?? Icons.route_outlined,
                  color: context.theme.primaryColor,
                )
              : null,
          title: Text(
            title ?? '',
            style: context.textTheme.titleMedium,
          ),
        ),
        content: Text(content ?? ''),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('Tamam'),
          ),
        ],
      ),
    );
  }
}
