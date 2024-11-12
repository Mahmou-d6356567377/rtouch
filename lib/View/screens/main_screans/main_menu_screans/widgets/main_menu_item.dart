import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class MainMenuItem extends StatelessWidget {
  const MainMenuItem({
    super.key,
    required this.title,
    required this.icon, required this.function,
  });

  final String title;
  final IconData icon;
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: arabicstyle6.copyWith(
                  color: const Color(kmaincolor), fontSize: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.5,
                  color: const Color.fromARGB(255, 53, 66, 73),
                ),
              ),
              child: Icon(
                icon,
                color: const Color(kmaincolor),
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
