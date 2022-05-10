 import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTab,@required this.label});
  final  Function()? onTab;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,

      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(label!,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBottomContainerColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: kBottomContainerHeight,
      ),
    );
  }
}