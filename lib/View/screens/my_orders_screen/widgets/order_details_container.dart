
import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class OrderDetailsContainer extends StatelessWidget {
  const OrderDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         padding: const EdgeInsets.all(10),
         margin: const EdgeInsets.all(10),
         width: MediaQuery.sizeOf(context).width,
         decoration: kmainboxDecoration2,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
         children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('ص 11-10-2022    04:43:47',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
               
         
               Text(',#234213',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
             ],
           ),   
           const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('400',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
               Text('ريال',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),),
               Expanded(
                child: Text(' احمد احمد',style: arabicstyle8.copyWith(fontWeight: FontWeight.w500),textAlign: TextAlign.end,)),
             ],
           ),
         ],
            ),
        );
  }
}
