import 'package:flutter/material.dart';

class EverythingIsAWidget extends StatelessWidget {
  const EverythingIsAWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'In Flutter, (almost) everything is a Widget!',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: const Color(0xff4285f4),
                  fontWeight: FontWeight.w600,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'This is a Widget!',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.black87,
                      ),
                ),
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Icon(
                Icons.android,
                size: 100,
              ),
            ],
          ),
          Text(
            'A Widget is an abstraction of a UI element',
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
          ),
        ],
      ),
    );
  }
}
