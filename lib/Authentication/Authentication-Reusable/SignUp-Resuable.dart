// ignore_for_file: prefer_const_constructors
import 'package:coursework/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';

Widget signuptextform(controller, hint, suficon) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value!.isEmpty) {
        return 'User Name required';
      }
      return null;
    },
    decoration: InputDecoration(
      filled: true,
      fillColor: textfieldinnercolor,
      hintText: hint,
      hintStyle:
          TextStyle(color: textfieldtextcolor, fontFamily: "poppinsregular"),
      suffixIcon: Icon(
        suficon,
        color: textfieldiconcolor,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 2.0,
        ),
      ),
    ),
    keyboardType: TextInputType.text,
    style: TextStyle(
      fontFamily: "Poppins",
    ),
  );
}

Widget signuptextformpassword(controller, suffixfunction, showpsw, hint) {
  return TextFormField(
    style: TextStyle(fontSize: 16.0, color: primaryblackColor),
    // cursorColor: kPrimaryPurpleColor,
    keyboardType: TextInputType.text,
    obscureText: showpsw,
    validator: (value) {
      RegExp regex = RegExp(
          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
      if (value!.isEmpty) {
        return 'Password required';
      }
      // else if (!regex.hasMatch(value)) {
      //   return 'Password Must contains \n - Minimum 1 Upper case \n - Minimum 1 lowercase \n - Minimum 1 Number \n - Minimum 1 Special Character \n - Minimum 8 letters';
      // }
      return null;
    },
    // onSaved: (String? val) {
    //   password = val;
    // },
    controller: controller,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
      filled: true,
      fillColor: textfieldinnercolor,
      suffixIcon: IconButton(
        onPressed: () {
          suffixfunction();
        },
        icon: Icon(
          showpsw ? Icons.visibility_off : Icons.visibility,
          color: textfieldiconcolor,
        ),
      ),
      hintText: hint,
      hintStyle:
          TextStyle(color: textfieldtextcolor, fontFamily: "poppinsregular"),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 2.0,
        ),
      ),
    ),
  );
}
