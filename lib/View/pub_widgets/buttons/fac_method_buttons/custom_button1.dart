import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rtouch/View/pub_widgets/buttons/fac_method_buttons/abstract_buttons_class.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';


class CustomButton1 implements CustomButton{
  @override
  Widget button(String title, VoidCallback onpressed) {
     return Container(
      margin:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      width: 1.sw,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(kmaincolor),
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title,
          style:
              arabicstyle6.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}