import 'package:flutter/material.dart';
import 'common.dart';

class SupportedPlatforms extends StatelessWidget {
  const SupportedPlatforms({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.headline3.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        );
    return Center(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          CustomFlexible(
            color: const Color(0xff00BFFF),
            children: <Widget>[
              Text(
                'Stable',
                style: textTheme,
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.95,
                  child: Image.asset(
                    'android.png',
                  ),
                ),
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.6,
                  child: Image.asset(
                    'ios.png',
                  ),
                ),
              ),
            ],
          ),
          CustomFlexible(
            color: const Color(0xff6A5ACD),
            children: [
              Text(
                'Beta',
                style: textTheme,
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.95,
                  child: Image.asset(
                    'hummingbird.png',
                  ),
                ),
              ),
            ],
          ),
          CustomFlexible(
            color: Colors.blue[300],
            children: [
              Text(
                'Alpha',
                style: textTheme,
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.8,
                  child: Image.asset(
                    'macos.png',
                  ),
                ),
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.95,
                  child: Image.asset(
                    'windows.png',
                  ),
                ),
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.90,
                  child: Image.asset(
                    'tux.png',
                  ),
                ),
              ),
            ],
          ),
          CustomFlexible(
            color: const Color(0xff87CEEB),
            children: [
              Text(
                'Soon™',
                style: textTheme,
              ),
              Expanded(
                child: Transform.scale(
                  scale: 0.8,
                  child: Image.asset(
                    'fuchsia.png',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
