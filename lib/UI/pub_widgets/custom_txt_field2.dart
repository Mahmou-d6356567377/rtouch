import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class CustomTextField2 extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextEditingController controller;
  bool isEmail;

  CustomTextField2({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400, 
        height: 63, 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25), 

        ),
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.name,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: arabicstyle8.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
            alignLabelWithHint: true,
            hintTextDirection: TextDirection.ltr,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const  BorderSide(color: Color(kmaincolor), width: 1.5), // no border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const  BorderSide(color: Color(kmaincolor), width: 1.5), // no border
            ),
          ),
        ),
      ),
    );
  }
}
