

import 'package:flutter/material.dart';

TextFormField getTextFiled(String hintText, TextEditingController controller){
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(border: OutlineInputBorder(), hintText: hintText),
    );
}

