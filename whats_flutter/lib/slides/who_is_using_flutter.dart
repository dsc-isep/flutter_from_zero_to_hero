import 'package:flutter/material.dart';

class WhoIsUsingFlutter extends StatelessWidget {
  const WhoIsUsingFlutter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            'Who\'s using Flutter?',
            style: Theme.of(context).textTheme.headline3.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'sony.png',
                width: 500,
                height: 500,
              ),
              Image.asset(
                'google.png',
                width: 500,
                height: 500,
              ),
              Image.asset(
                'tencent.png',
                width: 500,
                height: 500,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'alibaba.png',
                width: 500,
                height: 500,
              ),
              Image.asset(
                'ebay.png',
                width: 500,
                height: 500,
              ),
              Image.asset(
                'bmw.png',
                width: 500,
                height: 500,
                scale: 4.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            'See more at https://flutter.dev/showcase',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
