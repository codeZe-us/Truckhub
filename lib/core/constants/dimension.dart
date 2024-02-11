import 'package:flutter/material.dart';


final navigatorKey = GlobalKey<NavigatorState>();

const kDesignHeight = 768;
const kDesignWidth = 375;
const kDesignDrawerWidth = 318;

final _deviceProperties = MediaQuery.of(navigatorKey.currentContext!);

final _screenHeight = _deviceProperties.size.height;
final _screenWidth = _deviceProperties.size.width;

final kDisplayWidth = _screenWidth -
    _deviceProperties.viewInsets.left -
    _deviceProperties.viewInsets.right -
    _deviceProperties.systemGestureInsets.left -
    _deviceProperties.systemGestureInsets.right;

final kDisplayHeight = _screenHeight -
    _deviceProperties.viewInsets.top -
    _deviceProperties.viewInsets.bottom -
    _deviceProperties.systemGestureInsets.top -
    _deviceProperties.systemGestureInsets.bottom;
