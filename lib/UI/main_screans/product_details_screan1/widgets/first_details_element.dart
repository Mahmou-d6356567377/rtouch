import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/product_details_screan1/widgets/followButton.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class FirstDetailsElement extends StatelessWidget {
   const FirstDetailsElement({
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
    return Container(
      decoration: const BoxDecoration(
        color: Color(kmaincolor)
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        child: Image.asset(
                          bigimg,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Followbutton(),
                            Text('(', style:arabicstyle5.copyWith(fontSize: 20),),
                            Text(' 6 ', style:arabicstyle5.copyWith(fontSize: 20, color: kgoldenColor),),
                            Text(')', style:arabicstyle5.copyWith(fontSize: 20),),
                            const Spacer(),
                            Column(
                              children: [
                                Text('اتمام تجربه', style: arabicstyle5.copyWith(fontSize: 20),),
                               const CustomRateWidget(),
                              ],
                            ),
                             const SizedBox(width: 100,),

                          ],
                        ),
                      ),
                    ],
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
                            size: 45,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Positioned(
                    bottom:10,
                    right: 10,
                    child: Container(
                      decoration:const  BoxDecoration(color: Colors.transparent),
                      child: Row(
                        children: [
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRateWidget extends StatelessWidget {
  const CustomRateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
     PannableRatingBar(
       textDirection: TextDirection.rtl,
       rate: 3,
       items: List.generate(
         5,
         (index) => const RatingWidget(
           selectedColor:kgoldenColor,
           unSelectedColor: Color(0xffF0F0F0),
           child: Icon(
             Icons.star,
             size: 20,
           ),
         ),
       ),
       onChanged: (value) {
      //  setState(() {
      //    rating = value;
      //  });
       },
     ),
                                ],
                              );
  }
}
