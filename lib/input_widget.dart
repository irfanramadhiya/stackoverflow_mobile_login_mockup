import 'package:flutter/material.dart';

Widget inputWidget({required String inputTitle, IconData? suffixIcon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(inputTitle),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            suffixIcon: GestureDetector(
              child: Icon(suffixIcon),
            )),
      ),
      SizedBox(
        height: 16,
      ),
    ],
  );
}
