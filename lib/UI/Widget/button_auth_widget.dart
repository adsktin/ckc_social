import 'package:flutter/material.dart';

Widget buttonAuth({@required text, @required onpress}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Material(
      elevation: 20,
      child: SizedBox(
        width: 300,
        height: 50,
        child: ElevatedButton(
          onPressed: onpress,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
