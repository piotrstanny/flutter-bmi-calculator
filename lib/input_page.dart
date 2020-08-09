import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xFF1C2033);
const bottomBarColour = Colors.pink;
const bottomBarHeight = 100.0;
const textColour1 = Color(0xFF8D8E98);
const mainFontSize = 20.0;

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
                      colour: activeCardColour,
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
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
                    child: ReusableCard(colour: activeCardColour),
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
                    child: ReusableCard(colour: activeCardColour),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColour),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: bottomBarHeight,
        width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.all(0.0),
          onPressed: null,
          child: Container(
            decoration: BoxDecoration(
              color: bottomBarColour,
            ),
            child: Center(
              child: Text(
                'CALCULATE  YOUR  BMI',
                style: TextStyle(
                  fontSize: mainFontSize,
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
          color: textColour1,
          size: 90.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: mainFontSize,
            color: textColour1,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
