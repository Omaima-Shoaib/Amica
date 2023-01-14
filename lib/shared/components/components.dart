import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton(
    {double width = double.infinity,
      Color backgroundColor = Colors.blueGrey,
      required Function function,
      String text = 'Login'}) =>
    Container(
      width: width,
      color: backgroundColor,
      height: 40,
      child: MaterialButton(
        color:Color(0xFF6ECEC4),
        onPressed: () {
          function();
        },
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),

        // color: Colors.blueGrey[900],
      ),
    );

Widget defaultFormField(
    {required TextEditingController controller,
      required TextInputType type,
      validate,
      onTap,
      bool isClickable=true,
      required String label,
      required IconData prefixIcon}) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    validator: validate,
    cursorColor: Colors.blueGrey[900],
    onTap: onTap,
    enabled: isClickable,
    decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.grey,
            )),
        hintText: label,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)))),
  );
}
