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
                child: Text(
                  'Your Result',
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Normal',
                      textAlign: TextAlign.center,
                    ),
                    Text('25.3'),
                    Text('Optimal BMI range:\n18.5 - 20.0'),
                    Text('You have the right weight. Good job!')
                  ],
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
        title: 'RE-CALCULATE',
      ),
    );
  }
}
