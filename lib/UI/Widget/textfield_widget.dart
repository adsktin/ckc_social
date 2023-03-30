import 'package:flutter/material.dart';

Widget textformfieldEmailWidget({
  @required hintext,
  @required icon,
  @required textInputType,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(icon),
          ),
          hintText: hintext,
        ),
        onSaved: (String? value) {
          // This optional block of code can be used to run
          // code when the user saves the form.
        },
        validator: (String? value) {
          return (value != null && value.contains('@'))
              ? 'Do not use the @ char.'
              : null;
        },
      ),
    ),
  );
}


Widget textformfieldPasswordWidget({
  @required hintext,
  @required icon,
  @required textInputType,
  @required obscureText,
  @required suffixIcon,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(Icons.lock),
          ),
          hintText: 'Nhập mật khẩu',
          suffixIcon: suffixIcon,
        ),
        onSaved: (String? value) {
          // This optional block of code can be used to run
          // code when the user saves the form.
        },
        validator: (String? value) {
          return (value != null && value.contains('@'))
              ? 'Do not use the @ char.'
              : null;
        },
      ),
    ),
  );
}
