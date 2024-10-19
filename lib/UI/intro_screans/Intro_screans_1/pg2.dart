import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          padding: const  EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 6,
                spreadRadius: 3,
                offset: Offset(0, 0),
              )
            ]
          ),
          child: const CircleAvatar(
            radius: 130,
            backgroundImage: AssetImage(
              img,
            ),
          ),
        ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text(
               kintrotxt2,
               style: arabicstyle5.copyWith(fontSize: 18 , fontWeight: FontWeight.w500),
               textAlign: TextAlign.center,
             ),
           ],
         ),
       ),
      ],
    ),
    );
  }
}
