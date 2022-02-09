import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ScrollBehavior)
class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => PointerDeviceKind.values.toSet();
}
