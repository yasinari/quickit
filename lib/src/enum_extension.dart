extension EnumExtension on Enum {
  String get getName => toString().split('.').last;
}
