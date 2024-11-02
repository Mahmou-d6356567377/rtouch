import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(10),
    decoration: kmainBoxDecoration3,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 110,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      img,
                      fit: BoxFit.fill,
                    )),
              )),
           Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
    
                     const  Text(
                        'فستان كامل',
                        style: arabicstyle5,
    
                      ),
                   IconButton(onPressed: (){
    
                      }, icon: const Icon(Icons.cancel_outlined, color: Colors.red,)),
                    ],
                  ),
                   const Padding(
                     padding: EdgeInsets.only(right: 12.0),
                     child: Text(
                      'فستان كامل بالشنطة ستان كامل بالشنطةوالحذاء',
                      textAlign: TextAlign.end,
                      style: arabicstyle4,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,                          
                                             ),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 50,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange,
                            ),)),
                        ),
                        Container(
                          height: 35,
                          width: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('xxl', style: arabicstyle5.copyWith(fontSize: 20),)),
                        ),
                           Container(
                          height: 35,
                          width: 50,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('1', style: arabicstyle5.copyWith(fontSize: 20),)),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
