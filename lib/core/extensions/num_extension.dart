import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/dimension.dart';


extension NumExtension on num {
  double get height {
    return (this / kDesignHeight) * kDisplayHeight;
  }

  double get width {
    return (this / kDesignWidth) * kDisplayWidth;
  }

  double get drawerWidth {
    return (this / kDesignDrawerWidth) * kDesignDrawerWidth.width;
  }

  Radius get radius {
    return Radius.circular(toDouble());
  }

  BorderRadius get borderRadius {
    return BorderRadius.circular(toDouble());
  }

  double widthPerspective(BuildContext context) {
    return switch (MediaQuery.orientationOf(context)) {
      Orientation.portrait => width,
      Orientation.landscape => height,
    };
  }

  double heightPerspective(BuildContext context) {
    return switch (MediaQuery.orientationOf(context)) {
      Orientation.portrait => height,
      Orientation.landscape => width,
    };
  }
}
