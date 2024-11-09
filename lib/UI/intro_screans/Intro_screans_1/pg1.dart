import 'package:flutter/material.dart';
import 'package:rtouch/UI/intro_screans/widgets/intro_logo_widget.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const IntroLogoWidget(),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text(
               kintrotxt,
               style: arabicstyle5.copyWith(fontSize: 18 , fontWeight: FontWeight.w500),
               textAlign: TextAlign.center,
             ),
           ],
         ),
       ),
      ],
    ));
  }
}
