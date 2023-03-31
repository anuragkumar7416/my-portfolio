

import 'package:flutter/material.dart';

extension BreakpointUtils on BoxConstraints {
  bool get isTablet => maxWidth > 850;
  bool get isDesktop => maxWidth > 1200;
  bool get isMobile => !isTablet && !isDesktop;
}
