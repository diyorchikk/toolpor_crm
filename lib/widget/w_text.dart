import 'package:flutter/material.dart';
//more texts stye

class WTextStyle extends StatelessWidget {
  final String text;
  final double TextSize;
  final FontWeight TextWeight;
  final Color TextColor;
  final double TextHeight;

  const WTextStyle(
      {
        Key? key,
        required this.text ,
        required this.TextSize,
        required this.TextWeight,
        required this.TextColor,
        required this.TextHeight,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: TextColor,
            fontSize: TextSize,
            fontWeight: TextWeight,
            height: TextHeight,
          ),
        ),
      ),
    );
  }
}
