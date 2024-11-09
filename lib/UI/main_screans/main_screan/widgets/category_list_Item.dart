import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.screan,
  });

  final String screan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(screan);
      },
      child: Stack(
        children: [
          Container(
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                )),
          ),
          Positioned(
            bottom: 25,
            right: 0,
            child: Container(
              height: 40,
              width: 120,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 244, 135, 171),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Center(
                  child: Text(
                'ملابس نسائية',
                style: arabicstyle6.copyWith(fontSize: 15),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
