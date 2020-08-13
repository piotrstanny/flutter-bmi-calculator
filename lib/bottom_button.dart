import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.title});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RaisedButton(
        padding: EdgeInsets.all(0.0),
        onPressed: null,
        child: Container(
          height: kBottomBarHeight,
          decoration: BoxDecoration(
            color: kBottomBarColour,
          ),
          padding: EdgeInsets.only(bottom: 15.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
