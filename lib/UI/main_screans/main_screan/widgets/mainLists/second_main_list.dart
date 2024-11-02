import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class SecondMainList extends StatelessWidget {
  const SecondMainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List screans = [
      AppRoutes.wcs,
      AppRoutes.mcs,
      AppRoutes.wcs,
    ];
    return SizedBox(
      height: 115,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(screans[index]);
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
                            child:   Center(child: Text('ملابس نسائية', style: arabicstyle6.copyWith(fontSize: 15),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
