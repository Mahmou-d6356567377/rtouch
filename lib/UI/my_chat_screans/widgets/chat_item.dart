import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
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
       children: [
         Expanded(
           flex: 4,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Text('حنين', style: arabicstyle5.copyWith(fontSize: 15, fontWeight: FontWeight.w800),),
               Text('محتوى  الرسالة', style: arabicstyle5.copyWith(fontSize: 15, fontWeight: FontWeight.w500),maxLines: 2,overflow: TextOverflow.ellipsis,),
               const Spacer(),
               Text('11-10-2022    04:43:47',style: arabicstyle4.copyWith(fontWeight: FontWeight.w500),),
             ],
                           ),
           )),
         Expanded(child: ClipRRect(
           borderRadius: BorderRadius.circular(17),
           child: Image.asset(img))),
         
       ],
     ),
    );
  }
}