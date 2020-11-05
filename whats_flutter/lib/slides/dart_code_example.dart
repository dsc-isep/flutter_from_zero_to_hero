import 'package:flutter/material.dart';

class DartCodeExample extends StatelessWidget {
  const DartCodeExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: const Text(
              'Let\'s look at the code for the previous screen',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Flexible(
            child: Image.asset(
              'dart_code_example.png',
            ),
          ),
        ],
      ),
    );
  }
}
