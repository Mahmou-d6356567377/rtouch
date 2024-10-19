import 'package:flutter/material.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class Arabictext2 extends StatelessWidget {
  const Arabictext2({
    super.key,
    required this.arabicText,
  });

  final String arabicText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            arabicText,
            style: arabicstyle5,
          ),
        ],
      ),
    );
  }
}
