import 'package:flutter/material.dart';
import 'common.dart';

class FlutterFeatures extends StatelessWidget {
  FlutterFeatures({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Flutter features...',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 100,
              color: Color(0xff4285f4),
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomRow(
            text: 'Hot Reload',
            color: Color(0xffea4335),
            icon: Icons.refresh,
          ),
          CustomRow(
            text: 'Declarative UI',
            color: Colors.orange,
            icon: Icons.desktop_mac,
          ),
          CustomRow(
            text: 'Near-native Performance',
            color: Colors.pink,
            icon: Icons.timer,
          ),
          CustomRow(
            text: 'Amazing Community',
            color: Color(0xff34a853),
            icon: Icons.people_outline,
          ),
        ],
      ),
    );
  }
}
