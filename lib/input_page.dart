

import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

const activeCardColour = Colors.pink;
const inactiveCardColor = Colors.yellow;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: Icons.add,
                        label: 'foo',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: Icons.add,
                        label: 'hoge',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(children: [
                  Text('HEIGHT',style: labelTextStyle,),
                  Row(children: [
                    Text('180',style: TextStyle(fontSize:50,
                    fontWeight: FontWeight.w900),)

                  ],)
                ],),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                ],
              ),
            ),
            Container(
              color: Colors.blue[200],
              margin: EdgeInsets.only(top: 10),
              height: 80,
              width: double.infinity,
            )
          ],
        ));
  }
}
