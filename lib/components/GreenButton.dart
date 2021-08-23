import 'package:app_mobile/Utils/Colors.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  GreenButton({@required this.text, @required this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          ColorConstants.neonGreen,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      onPressed: onPress,
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
