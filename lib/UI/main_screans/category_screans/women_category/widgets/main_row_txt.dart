import 'package:flutter/material.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class MainRowTXT extends StatelessWidget {
  const MainRowTXT({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: arabicstyle5.copyWith(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
