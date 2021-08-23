import 'package:app_mobile/Utils/Colors.dart';
import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonIcon;
  final String buttonText;
  final double width;
  final Function onpressed;
  final Color color1;
  final Color color2;

  RoundedButtonWidget({
    @required this.buttonIcon,
    @required this.buttonText,
    @required this.width,
    @required this.onpressed,
    @required this.color1,
    @required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 15, 0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                colors: [
                  color1,
                  color2,
                ],
              ),
              color: Colors.deepPurple.shade300,
              borderRadius: BorderRadius.circular(100),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(65, 65)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                // elevation: MaterialStateProperty.all(3),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                onpressed();
              },
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image(
                    image: AssetImage(buttonIcon),
                  )),
            ),
          ),
          SizedBox(height: 10),
          Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: ColorConstants.backgroundDarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
