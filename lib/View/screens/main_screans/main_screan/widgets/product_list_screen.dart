
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.pds2);
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 5, right: 5, left: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.2),
                              blurRadius: 2,
                              spreadRadius: 2,
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: 15,
                        right: 15,
                        top: 5,
                        child: Container(
                          height: height * .7,
                          width: width * .8,
                          margin: const EdgeInsets.only(
                              top: 5, right: 5, left: 5),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                blurRadius: 2,
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey,
                          ),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(18),
                              child: Image.asset(
                                img,
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 0,
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          height: 40,
                          width: 120,
                          decoration: const BoxDecoration(
                            color:
                                Color.fromARGB(255, 244, 135, 171),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(17),
                              bottomLeft: Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'data',
                        style: arabicstyle5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
