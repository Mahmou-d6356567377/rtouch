import 'package:flutter/material.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class MainRow2TXT extends StatelessWidget {
  const MainRow2TXT({
    super.key, required this.text1, required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text1,
            style: arabicstyle5.copyWith(fontSize: 18),
          ),
          const Spacer(),
          Text(
            text2,
            style: arabicstyle5.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}