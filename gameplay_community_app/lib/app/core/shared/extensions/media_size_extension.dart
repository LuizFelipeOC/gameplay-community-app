import 'package:flutter/material.dart';

extension MediaSizeExtension on BuildContext {
  Size get mediaSize => MediaQuery.sizeOf(this);
}
