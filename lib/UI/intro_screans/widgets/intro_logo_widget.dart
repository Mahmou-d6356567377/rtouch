
import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';

class IntroLogoWidget extends StatelessWidget {
  const IntroLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      height: 300,
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
    );
  }
}
