import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: kPagePadding,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Result',
                  style: kPageTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'NORMAL',
                        textAlign: TextAlign.center,
                        style: kResultTitleStyle,
                      ),
                      Text(
                        '25.3',
                        style: kResultNoStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'For most adults, and ideal BMI is between 18.5 and 25.0.\nIf your BMI is outside that range, it is not an ideal weight-to-height ratio, which may indicate underweight or overweight.',
                        style: kResultDescStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        onTap: () {
          Navigator.pop(context);
        },
        title: 'RE-ENTER VALUES',
      ),
    );
  }
}
