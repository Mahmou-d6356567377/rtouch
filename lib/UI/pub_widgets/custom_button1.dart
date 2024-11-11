import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key, required this.title,required this.function,
  });

  final String title;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: function,
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
