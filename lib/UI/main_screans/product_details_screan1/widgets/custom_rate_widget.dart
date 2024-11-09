import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:rtouch/help/constants/constants.dart';

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
