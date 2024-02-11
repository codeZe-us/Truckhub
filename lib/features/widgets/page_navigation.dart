import 'package:flutter/material.dart';

class SizeTransition1 extends PageRouteBuilder{

  SizeTransition1(this.page)
  :super(pageBuilder: 
    (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1800),
    reverseTransitionDuration: const Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, anothetAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastOutSlowIn
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(sizeFactor: animation, axis: Axis.horizontal,
        axisAlignment: 0,
        child: page,
        ),
      );
    },
  );
  final Widget page;
}


class SizeTransition2 extends PageRouteBuilder{

  SizeTransition2(this.page)
  :super(pageBuilder: 
    (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1800),
    reverseTransitionDuration: const Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, anothetAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastOutSlowIn
      );
      return Align(
        alignment: Alignment.topCenter,
        child: SizeTransition(sizeFactor: animation, axis: Axis.horizontal,
        axisAlignment: 0,
        child: page,
        ),
      );
    },
  );
  final Widget page;
}


class SizeTransition3 extends PageRouteBuilder{

  SizeTransition3(this.page)
  :super(pageBuilder: 
    (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1100),
    reverseTransitionDuration: const Duration(milliseconds: 230),
    transitionsBuilder: (context, animation, anothetAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastOutSlowIn
      );
      return Align(
        alignment: Alignment.centerLeft,
        child: SizeTransition(sizeFactor: animation, axis: Axis.horizontal,
        axisAlignment: 0,
        child: page,
        ),
      );
    },
  );
  final Widget page;
}


class SizeTransition4 extends PageRouteBuilder{

  SizeTransition4(this.page)
  :super(pageBuilder: 
    (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1100),
    reverseTransitionDuration: const Duration(milliseconds: 230),
    transitionsBuilder: (context, animation, anothetAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastOutSlowIn
      );
      return Align(
        alignment: Alignment.centerRight,
        child: SizeTransition(sizeFactor: animation, axis: Axis.horizontal,
        axisAlignment: 0,
        child: page,
        ),
      );
    },
  );
  final Widget page;
}


class SizeTransition5 extends PageRouteBuilder{

  SizeTransition5(this.page)
  :super(pageBuilder: 
    (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1600),
    reverseTransitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anothetAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastOutSlowIn
      );
      return SlideTransition(position: Tween(begin: const Offset(1.0,0.0), end: const Offset(0.0,0.0)).animate(animation),
      textDirection: TextDirection.rtl,
      child: page,
      );
    },
  );
  final Widget page;
}