import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/screens/main_screans/category_screans/women_category/widgets/choose_menue_widget.dart';
import 'package:rtouch/View/screens/main_screans/category_screans/women_category/widgets/main_row_txt.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

import '../../main_screan/widgets/mainLists/second_main_list.dart';

class WomenCategory extends StatelessWidget {
  const WomenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ملابس نسائية',
          style: arabicstyle5.copyWith(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_forward, color: Color(kmaincolor),size: 35,),),
        ],
      ),
      body:  Column(
        children: [
            const MainRowTXT(title: 'الاقسام'),
            const SecondMainList(),
            const MainRowTXT(title: 'المنتجات'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             const ChooseMenuWidget(),
              Text('تصنيف حسب', style: arabicstyle5.copyWith(fontSize: 20),),
              Container(
                margin: const EdgeInsets.all(10),
                height: 25,
                child: Image.asset(kfilterImg)),
            ],
          ),
   Expanded(
               child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: .8,
                 ),
                 itemCount: 20,
                 itemBuilder: (BuildContext context, int index) {
                   return Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(17),
                    ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(17),
                                child: Image.asset(img, fit: BoxFit.cover,)))),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('الابيض', style: arabicstyle5.copyWith(fontSize: 15),),
                                ],
                               ),
                              ))
                        ],
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