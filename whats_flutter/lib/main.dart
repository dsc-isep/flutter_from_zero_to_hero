import 'package:flutter/material.dart';
import 'package:whats_flutter/assets_list.dart';

import 'splash.dart';
import 'what_is_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _precacheAssets(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Presentation',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            WhatIsFlutter(),
            _SplashSlideTransition(),
          ],
        ),
      ),
    );
  }

  void _precacheAssets(BuildContext context) async {
    for (String asset in imageAssets) {
      precacheImage(
        AssetImage(asset),
        context,
      );
    }
  }
}

class _SplashSlideTransition extends StatefulWidget {
  const _SplashSlideTransition({
    Key key,
  }) : super(key: key);

  @override
  __SplashSlideTransitionState createState() => __SplashSlideTransitionState();
}

class __SplashSlideTransitionState extends State<_SplashSlideTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-5.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutSine,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: GestureDetector(
        child: Splash(),
        onTap: () => _controller.forward(),
      ),
    );
  }
}
