import 'package:flutter/material.dart';

const inputFieldDecor = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 3,
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent, // Color of the underline when the TextField is focused
      width: 3, // Thickness of the underline when the TextField is focused
    ),
  ),
);
