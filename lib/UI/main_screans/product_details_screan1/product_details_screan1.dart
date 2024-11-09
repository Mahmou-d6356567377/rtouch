import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/second_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/third_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainRow2TXT.dart';
import 'package:rtouch/UI/main_screans/product_details_screan1/widgets/first_details_element.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ProductDetailsScrean1 extends StatelessWidget {
  const ProductDetailsScrean1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const FirstDetailsElement( bigimg: img, smalimg: img, title: 'مها'),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
             child: Text(kintrotxt, style: arabicstyle4.copyWith(fontSize: 15, fontWeight: FontWeight.normal),),
           ),
            SingleChildScrollView(
             child: Column(
               children: [
                            MainRow2TXT(text1: '', text2: 'القصص', fun: (){},),
            ThirdMainList(),
            MainRow2TXT(text1: '', text2: 'الاقسام',fun: (){},),
            SecondMainList(),
             MainRow2TXT(text1: '', text2: 'المنتجات', fun: (){},),
               ],
             ),
           ),

        ],
      ),
    );
  }
}
