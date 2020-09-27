import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  String text;

  ActionButton(this.text);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          topLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      hoverColor: Color(0xffe3cda4),
      onPressed: () {},
      child: Text(
        this.text,
        style: TextStyle(
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w100,
          color: Colors.white,
        ),
      ),
    );
  }
}
