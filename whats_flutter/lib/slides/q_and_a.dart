import 'package:flutter/material.dart';

class QandA extends StatelessWidget {
  const QandA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Any questions?\nAsk away!',
        style: Theme.of(context).textTheme.headline1.copyWith(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
