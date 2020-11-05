import 'package:flutter/material.dart';
import 'common.dart';

class FlutterBackbones extends StatelessWidget {
  const FlutterBackbones({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Transform.scale(
                    scale: 0.5,
                    child: Image.asset(
                      'dart.png',
                    ),
                  ),
                ),
                Flexible(
                  child: Transform.scale(
                    scale: 0.5,
                    child: Image.asset(
                      'skia.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: RichText(
              text: TextSpan(
                text:
                    'Flutter relies on Dart (programming language) and Skia, a graphics engine\nAlso by ',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                children: google(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
