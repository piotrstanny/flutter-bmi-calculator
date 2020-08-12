import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  female,
  male,
}

Gender selectedGender = Gender.female;
int currentHeightValue = kSliderStartingValue.round();

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                          FontAwesomeIcons.mars,
                          'MALE',
                          selectedGender == Gender.male
                              ? kActiveTextColour
                              : kInactiveTextColour),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                          FontAwesomeIcons.venus,
                          'FEMALE',
                          selectedGender == Gender.female
                              ? kActiveTextColour
                              : kInactiveTextColour),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                                color: kInactiveTextColour,
                                fontSize: kLabelFontSize,
                                fontWeight: kLabelFontWeight,
                                letterSpacing: kLabelFontLetterSpacing),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                currentHeightValue.toString(),
                                style: TextStyle(
                                    fontSize: kLargeTextSize,
                                    color: kActiveTextColour,
                                    fontWeight: kLabelFontWeight),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                    color: kInactiveTextColour,
                                    fontSize: kLabelFontSize,
                                    fontWeight: kLabelFontWeight,
                                    letterSpacing: kLabelFontLetterSpacing),
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: kBottomBarColour,
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: kInactiveTextColour,
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 20.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 34.0),
                            ),
                            child: Slider(
                              onChanged: (double value) {
                                setState(() {
                                  currentHeightValue = value.round();
                                });
                              },
                              value: currentHeightValue.toDouble(),
                              min: kSliderMinValue,
                              max: kSliderMaxValue,
                              divisions:
                                  (kSliderMaxValue - kSliderMinValue).round(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: kActiveCardColour),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ReusableCard(colour: kActiveCardColour),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomBarHeight,
        width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.all(0.0),
          onPressed: null,
          child: Container(
            decoration: BoxDecoration(
              color: kBottomBarColour,
            ),
            child: Center(
              child: Text(
                'CALCULATE  YOUR  BMI',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
