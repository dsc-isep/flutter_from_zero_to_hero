import 'package:flutter/material.dart';
import 'common.dart';

class FlutterDescription extends StatelessWidget {
  const FlutterDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          FlutterLogo(
            size: 400,
          ),
          Flexible(
            child: _Description(),
          )
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      text: TextSpan(
        text:
            'Flutter is an open-source framework for cross-platform app development created by ',
        style: Theme.of(context).textTheme.headline2.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
        children: google(),
      ),
    );
  }
}
