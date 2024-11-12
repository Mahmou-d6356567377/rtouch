import 'package:flutter/material.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class MainRow2TXT extends StatelessWidget {
  const MainRow2TXT({
    super.key, required this.text1, required this.text2, required this.fun,
  });
  final String text1;
  final String text2;
  final void Function() fun;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: fun,
            child: Text(
              text1,
              style: arabicstyle5.copyWith(fontSize: 18),
            ),
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
