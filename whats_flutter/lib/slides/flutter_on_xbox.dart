import 'package:flutter/material.dart';

class FlutterOnXbox extends StatelessWidget {
  const FlutterOnXbox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Image.asset(
            'flutter_xbox.png',
          ),
        ),
        Text(
          'Source: https://medium.com/flutter/announcing-flutter-windows-alpha-33982cd0f433',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
