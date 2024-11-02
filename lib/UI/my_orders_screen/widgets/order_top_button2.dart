import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class OrderTopButton2 extends StatelessWidget {
  const OrderTopButton2({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 50,
      decoration: BoxDecoration(
        color: const Color(kmaincolor),
        borderRadius: BorderRadius.circular(35),
       
      ),
      child: Center(
          child: Text(
        title,
        style: arabicstyle5.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color:  Colors.white),
      )),
    );
  }
}
