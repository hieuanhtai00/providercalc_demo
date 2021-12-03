import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  String input = '';
  RectangleButton({
    Key? key,
    required this.input,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: Text(
          input,
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  String input = '';
  CircleButton({
    Key? key,
    required this.input,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          input,
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}

RectangleButton but0 = RectangleButton(input: '0');
RectangleButton but1 = RectangleButton(input: '1');
RectangleButton but2 = RectangleButton(input: '2');
RectangleButton but3 = RectangleButton(input: '3');
RectangleButton but4 = RectangleButton(input: '4');
RectangleButton but5 = RectangleButton(input: '5');
RectangleButton but6 = RectangleButton(input: '6');
RectangleButton but7 = RectangleButton(input: '7');
RectangleButton but8 = RectangleButton(input: '8');
RectangleButton but9 = RectangleButton(input: '9');
RectangleButton butdot = RectangleButton(input: '.');
RectangleButton butC = RectangleButton(input: 'C');
RectangleButton butpercent = RectangleButton(input: '%');
RectangleButton but$ = RectangleButton(input: '\$');

CircleButton butsum = CircleButton(input: '+');
CircleButton butsub = CircleButton(input: '-');
CircleButton butmul = CircleButton(input: '*');
CircleButton butdiv = CircleButton(input: '/');
CircleButton butequal = CircleButton(input: '=');
