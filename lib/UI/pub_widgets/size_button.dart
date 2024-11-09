import 'package:flutter/material.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class SizeButton extends StatelessWidget {
  const SizeButton({
    super.key,
    required this.selectedSize,
    required this.size, required this.selectedColor, required this.unselectedColor, 
  });

  final String? selectedSize;
  final String size;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: selectedSize == size ? selectedColor : unselectedColor,
        border:
            Border.all(width: 1, color:  Colors.grey),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.9),
            blurRadius: 2,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Text(
        size,
        style: arabicstyle5.copyWith(fontSize: 15),
      ),
    );
  }
}
