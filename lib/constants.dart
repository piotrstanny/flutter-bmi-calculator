import 'package:flutter/material.dart';

const kPagePadding = EdgeInsets.all(20.0);
// Card's elements styling values:
const kActiveCardColour = Color(0xFF1C2033);
const kInactiveCardColour = Color(0xFF131528);
const kActiveTextColour = Colors.white;
const kInactiveTextColour = Color(0xFF797b84);
const kBottomBarColour = Colors.pink;
const kBottomBarHeight = 60.0;
const kLabelFontSize = 14.0;
const kLargeTextSize = 36.0;
const kLabelFontWeight = FontWeight.bold;
const kLabelFontLetterSpacing = 1.5;

// Height Slider card values:
const kSliderStartingValue = 162.0;
const kSliderMinValue = 100.0;
const kSliderMaxValue = 230.0;

// Styles of some elements
const kNumberTextStyle = TextStyle(
    fontSize: kLargeTextSize,
    color: kActiveTextColour,
    fontWeight: kLabelFontWeight);

const kLabelTextStyle = TextStyle(
    color: kInactiveTextColour,
    fontSize: kLabelFontSize,
    fontWeight: kLabelFontWeight,
    letterSpacing: kLabelFontLetterSpacing);

const kResultTitleStyleGreen = TextStyle(
    color: Colors.green,
    fontSize: kLabelFontSize,
    fontWeight: kLabelFontWeight,
    letterSpacing: kLabelFontLetterSpacing);

const kResultTitleStyleRed = TextStyle(
    color: Colors.red,
    fontSize: kLabelFontSize,
    fontWeight: kLabelFontWeight,
    letterSpacing: kLabelFontLetterSpacing);

const kPageTitleStyle = TextStyle(
  fontSize: 28.0,
  color: kActiveTextColour,
  fontWeight: kLabelFontWeight,
);

const kResultNoStyle = TextStyle(
  fontSize: 50.0,
  color: kActiveTextColour,
  fontWeight: kLabelFontWeight,
);

const kResultDescStyle = TextStyle(
  color: kActiveTextColour,
  fontSize: kLabelFontSize,
);
