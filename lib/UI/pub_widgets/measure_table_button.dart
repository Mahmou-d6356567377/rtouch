
import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class MeasureTableButton extends StatelessWidget {
  const MeasureTableButton({
    super.key, required this.ontap,
  });
final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
            border: const Border(
                right: BorderSide(
                    color: Colors.blueGrey, width: 1),
                left: BorderSide(
                    color: Colors.blueGrey, width: 1),
                bottom: BorderSide(
                    color: Colors.blueGrey, width: 1)),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 210, 204, 204)
                        .withOpacity(.9),
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(0, 1),
              ),
            ]),
        child: Row(
          children: [
            Text(
              'جدول المقاسات',
              style: arabicstyle5.copyWith(fontSize: 15),
            ),
            Container(
                height: 25,
                margin: const EdgeInsets.all(5),
                child: Image.asset(kmeasure))
          ],
        ),
      ),
    );
  }
}
