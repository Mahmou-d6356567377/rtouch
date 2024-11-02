
import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class OrderDetailsContainer extends StatelessWidget {
  const OrderDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         padding: const EdgeInsets.all(10),
         margin: const EdgeInsets.all(10),
         height: 120,
         width: MediaQuery.sizeOf(context).width,
         decoration: kmainboxDecoration2,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
           children: [
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
       children: [
          Row(
           children: [
             Text('ص 11-10-2022    04:43:47',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
             const SizedBox(width: 90,),
             Text('#234213',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
           ],
         ),   
         const Spacer(),
         Row(
           children: [
             Text('400',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
             Text('ريال',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
             const SizedBox(width: 90,),
             Text(' احمد احمد',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
           ],
         ),
       ],
                     ),
     ),
     
     
           ],
         ),
        );
  }
}
