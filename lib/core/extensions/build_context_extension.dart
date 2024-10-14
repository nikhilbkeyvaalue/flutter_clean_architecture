import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension BuildContextHelper on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  double dW(double percent) {
    return MediaQuery.of(this).size.width / 100 * percent;
  }

  double dH(double percent) {
    return MediaQuery.of(this).size.height / 100 * percent;
  }

  ResponsiveBreakpointsData get rsp => ResponsiveBreakpoints.of(this);
}
