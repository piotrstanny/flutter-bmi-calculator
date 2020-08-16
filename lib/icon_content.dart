import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: 50.0,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: kLabelFontSize,
            color: textColour,
            fontWeight: kLabelFontWeight,
            letterSpacing: kLabelFontLetterSpacing,
          ),
        )
      ],
    );
  }
}
