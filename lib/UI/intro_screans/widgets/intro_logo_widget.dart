
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rtouch/help/constants/constants.dart';

class IntroLogoWidget extends StatelessWidget {
  const IntroLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Container(
        margin:  EdgeInsets.symmetric(vertical: 20.h),
        height: 230.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 215, 215, 215),
              blurRadius: 12,
              spreadRadius: .1,
              offset: Offset(0, 0),
            )
          ]
        ),
        child: ClipRRect(
             
               borderRadius: BorderRadius.circular(17),
               child: Image.asset(img, fit: BoxFit.cover,),
               ),
      ),
    );
  }
}
