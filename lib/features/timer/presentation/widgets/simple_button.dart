import 'package:flutter/material.dart';

Widget simpleButton(void Function() onPressed, String btnText) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(btnText, style: TextStyle(fontSize: 20)),
  );
}
