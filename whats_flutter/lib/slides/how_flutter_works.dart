import 'package:flutter/material.dart';

class HowDoesFlutterWork extends StatelessWidget {
  const HowDoesFlutterWork({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Ok, so Flutter seems pretty cool...',
          style: TextStyle(
            color: const Color(0xff4285f4),
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '... but how does it work?',
          style: TextStyle(
            color: const Color(0xffea4335),
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '🤔🤔🤔🤔🤔',
          textScaleFactor: 5.0,
        ),
      ],
    );
  }
}
