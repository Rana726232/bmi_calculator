import 'package:bmi_calculator_rana/components/bottom_button.dart';
import 'package:bmi_calculator_rana/components/reusable_card.dart';
import 'package:bmi_calculator_rana/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
   ResultPage({ required this.bmiResult,required this.resultText,required this.interpretation});
   final String bmiResult;
   final String resultText;
   final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultText,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),


                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onTab: (){
              Navigator.pop(context);
            },
          ),


        ],


      ),
    );
  }
}
