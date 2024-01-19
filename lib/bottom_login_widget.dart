import 'package:flutter/material.dart';

Widget bottomLogin(
    {required String firstText,
    required String linkText,
    required Function onLinkTap,
    IconData? iconLink}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(firstText),
      const SizedBox(
        width: 5,
      ),
      GestureDetector(
        onTap: () {
          onLinkTap();
        },
        child: Row(
          children: [
            Text(
              linkText,
              style: const TextStyle(color: Colors.blue),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              iconLink,
              color: Colors.blue,
            )
          ],
        ),
      )
    ],
  );
}
