import 'package:flutter/material.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class CartContainerDataRow extends StatelessWidget {
  const CartContainerDataRow({
    super.key, required this.txt1, required this.txt2,
  });
  final String txt1;
  final String txt2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(txt1,
              style: arabicstyle7.copyWith(fontSize: 18)),
          const Spacer(),
          Text(txt2, style: arabicstyle7.copyWith(fontSize: 18)),
        ],
      ),
    );
  }
}
