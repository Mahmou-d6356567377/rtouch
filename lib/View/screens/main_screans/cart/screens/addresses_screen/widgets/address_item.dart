
import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.all(6),
      decoration: kmainBoxDecoration4,
      child: Row(
        children: [
           
          Expanded(
            flex: 2,
            child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            GestureDetector(
              onTap: (){
    
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 30,
                width: 60,
                decoration: kmainboxDecoration2,
                child: const Icon(Icons.delete_outlined, color: Color(kmaincolor3 ),)
              ),
            ),
            GestureDetector(
              onTap: (){
    
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 30,
                width: 60,
                decoration: kmainboxDecoration2,
                child: const Align(
                  alignment: Alignment.center,
                  child:  Text('تعيين' ,style:TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: kmainfont,
                  ),),
                ),
              ),
            )
            ],
          ),),
          Expanded(
            flex: 5,
            child: 
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
              const Padding(
                 padding: const EdgeInsets.only(bottom: 20.0, top: 10),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Riyadh', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ],
                 ),
               ),
            
               const Text('RUMD7034, 7034 , 168 رقم 3978 حى المونيسة,, Riyadh 13249 , Saudi Arabia, ,', maxLines: 3,style: TextStyle(
                fontSize: 18,
                   fontWeight: FontWeight.w300,    
                 overflow: TextOverflow.ellipsis
               ),),
               const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('33434375', style: arabicstyle5.copyWith(fontSize: 20),),
                ],
               ),
              ],
            ),
          ),),
        ],
      ),
    );
  }
}
