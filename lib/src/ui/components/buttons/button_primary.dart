import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key key,
    this.color,
    this.textColor,
    this.buttonText,
    this.onClicked,
  }) : super(key: key);

  final Color color, textColor;
  final String buttonText;
  final onClicked;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onClicked,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: color,
      textColor: textColor,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 45),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
