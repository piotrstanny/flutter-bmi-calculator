import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData faicon;
  final String iconText;
  IconContent(this.faicon, this.iconText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          faicon,
          color: Color(0xFF8D8E98),
          size: 90.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        )
      ],
    );
  }
}
