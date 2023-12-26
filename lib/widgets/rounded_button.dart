import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(this.buttonColor,this.buttonTexts,this.onPress, {super.key});

  final Color buttonColor;
  final String buttonTexts;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      elevation: 5.0,
      color: buttonColor,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: () {
          onPress!();
        },
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          buttonTexts,
          style: const TextStyle(
            color: Colors.white
          ),
        ),
      ),
    ),
  );
  }
}
