import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class OrderTopButton1 extends StatelessWidget {
  const OrderTopButton1({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Outer shadow color
            spreadRadius: -2,
            blurRadius: 10,
            offset: const Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Center(
          child: Text(
        title,
        style: arabicstyle5.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: const Color(kmaincolor)),
      )),
    );
  }
}
