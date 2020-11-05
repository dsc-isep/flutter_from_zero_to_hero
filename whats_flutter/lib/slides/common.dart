import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  const CustomRow({
    Key key,
    @required this.color,
    @required this.text,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 64),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 60,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(
          icon,
          color: color,
          size: 80,
        ),
      ],
    );
  }
}

class CustomFlexible extends StatelessWidget {
  final List<Widget> children;
  final Color color;

  const CustomFlexible({
    Key key,
    @required this.children,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 64.0),
          child: Card(
            color: const Color(0xffB0E0E6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}

List<TextSpan> google() {
  return [
    TextSpan(text: 'G', style: TextStyle(color: const Color(0xff4285f4))),
    TextSpan(text: 'o', style: TextStyle(color: const Color(0xffea4335))),
    TextSpan(text: 'o', style: TextStyle(color: const Color(0xfffbbc05))),
    TextSpan(text: 'g', style: TextStyle(color: const Color(0xff4285f4))),
    TextSpan(text: 'l', style: TextStyle(color: const Color(0xff34a853))),
    TextSpan(text: 'e', style: TextStyle(color: const Color(0xffea4335))),
  ];
}
