import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData faicon;
  final String iconText;
  final Color textColour;
  IconContent(this.faicon, this.iconText, this.textColour);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          faicon,
          color: textColour,
          size: 90.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 20.0,
            color: textColour,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        )
      ],
    );
  }
}
