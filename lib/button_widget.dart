import 'package:flutter/material.dart';

Widget buttonWidget(
    {required Color color,
    String logoPath = "",
    required String buttonText,
    required Color buttonTextColor}) {
  return Container(
    margin: EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)), color: color),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 25,
            width: 25,
            child: logoPath == "" ? Text(logoPath) : Image.asset(logoPath)),
        TextButton(
            onPressed: () {},
            child: Text(
              buttonText,
              style: TextStyle(color: buttonTextColor),
            )),
      ],
    ),
  );
}
