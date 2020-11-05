import 'package:flutter/material.dart';
import 'common.dart';

class SeriesAgenda extends StatelessWidget {
  const SeriesAgenda({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'What we plan to cover',
          style: Theme.of(context).textTheme.headline1.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
        ),
        CustomRow(
          color: Colors.blue,
          text: 'Intro to Flutter',
          icon: Icons.all_out,
        ),
        CustomRow(
          color: Colors.pink,
          text: 'State Management in Flutter',
          icon: Icons.star,
        ),
        CustomRow(
          color: Colors.green,
          text: 'Networking in Flutter',
          icon: Icons.api,
        ),
        CustomRow(
          color: Colors.purple,
          text: 'Animations in Flutter',
          icon: Icons.animation,
        ),
        CustomRow(
          color: Colors.deepPurple,
          text: 'Testing in Flutter',
          icon: Icons.zoom_in,
        ),
        CustomRow(
          color: Colors.blue[700],
          text: 'We will do this as we build an app!',
          icon: Icons.apps,
        ),
      ],
    );
  }
}
