import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class FrstItmProductScrean extends StatelessWidget {
  const FrstItmProductScrean({
    super.key,
    required this.bigimg,
    required this.smalimg,
    required this.title,
  });
  final String bigimg;
  final String smalimg;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.pds1);
      },
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.7),
                        blurRadius: 9,
                        spreadRadius: 8,
                        offset: const Offset(-3, 4),
                      ),
                    ]),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.asset(
                      bigimg,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(
                      kmaincolor,
                    )),
                child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(
                      kmaincolor,
                    )),
                child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoutes.cs);
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.pds1);
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(kmaincolor),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          smalimg,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black.withOpacity(.5),
                      ),
                      child: Center(
                        child: Text(
                          title,
                          style: arabicstyle6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
