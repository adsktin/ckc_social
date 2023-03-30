import 'package:flutter/material.dart';

Widget inkwelltoscreen({@required text1, @required text2, @required ontap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Center(
      child: InkWell(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: const TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
