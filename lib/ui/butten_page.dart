import 'package:flutter/material.dart';


class CardRight extends StatefulWidget {
  final String number;
  final Color iconcolor;
  final Color paint;
  final double fontSize;
 final VoidCallback buttonTapped;
  const CardRight(
      {super.key,
      required this.number,
      required this.iconcolor,
      required this.paint,   required this.fontSize ,required this.buttonTapped});

  @override
  State<CardRight> createState() => _CardRightState(number, iconcolor,paint ,fontSize,buttonTapped);
}

class _CardRightState extends State<CardRight> {
  final String number;
 final double fontSize;
  final Color iconcolor;
  final Color paint;
  final VoidCallback buttonTapped;

  _CardRightState(this.number, this.iconcolor, this.paint, this.fontSize ,this.buttonTapped);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              primary:paint,
              shadowColor: Color.fromARGB(255, 255, 119, 0),
              elevation: 10),
          onPressed: buttonTapped,
          child: Container(
            width: 66,
            height: 66,
            alignment: Alignment.center,
            child: Text(
              '$number',
              style: TextStyle(color:iconcolor, fontSize: fontSize),
            ),
          ),
        ),
      ],
    );
  }
}
