import 'dart:ui';

import 'package:flutter/material.dart';
import './slides/slides.dart';

class WhatIsFlutter extends StatefulWidget {
  WhatIsFlutter({
    Key key,
  }) : super(key: key);

  @override
  _WhatIsFlutterState createState() => _WhatIsFlutterState();
}

class _WhatIsFlutterState extends State<WhatIsFlutter>
    with SingleTickerProviderStateMixin {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB0E0E6),
      body: GestureDetector(
        onTap: () {
          _pageController.nextPage(
            duration: Duration(
              milliseconds: 300,
            ),
            curve: Curves.easeInOutSine,
          );
        },
        onDoubleTap: () {
          _pageController.previousPage(
            duration: Duration(
              milliseconds: 300,
            ),
            curve: Curves.easeInOutSine,
          );
        },
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: <Widget>[
            FlutterDescription(),
            FlutterBackbones(),
            SupportedPlatforms(),
            FlutterOnXbox(),
            FlutterFeatures(),
            HowDoesFlutterWork(),
            FlutterArchitectureLayers(),
            DartCodeExample(),
            EverythingIsAWidget(),
            WhoIsUsingFlutter(),
            SeriesAgenda(),
            QandA(),
          ],
        ),
      ),
    );
  }
}
