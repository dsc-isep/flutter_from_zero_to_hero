import 'package:flutter/material.dart';

class FlutterArchitectureLayers extends StatelessWidget {
  const FlutterArchitectureLayers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(
                'flutterlayers.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: const Text(
              'Source: https://flutter.dev/docs/resources/architectural-overview',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
