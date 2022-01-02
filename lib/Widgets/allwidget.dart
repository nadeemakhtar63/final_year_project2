import 'package:flutter/material.dart';

textField(emailEditingController,bool emailvalidate,
    hintText,textInputType,bool check,Icon icon)
{
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      autocorrect: true,
      obscureText: check,
      keyboardType: textInputType,
      controller: emailEditingController,
      style: TextStyle(color: Color(0xff3D4864)),
      decoration: InputDecoration(
          fillColor: Color(0xFFFFFFFF),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: new BorderSide(color: Color(0xff3D4864))
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide:  BorderSide(color: Color(0xff3D4864), width: 0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide:  BorderSide(color: Color(0xff3D4864), width: 0.0),
          ),
          hintText: hintText,
          prefixIcon: icon,
          hintStyle: TextStyle(color: Color(0xff3D4864)),
          errorText: emailvalidate?"$hintText Required*":null
      ),

    ),
  );
}