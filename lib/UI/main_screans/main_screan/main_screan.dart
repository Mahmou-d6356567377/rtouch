import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/fifth_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/first_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/fourth_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainRow2TXT.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/second_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/third_main_list.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class MainScrean1 extends StatelessWidget {
  const MainScrean1({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoutes.cs);
                    },
                    icon: const Icon(Icons.shopping_cart)),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ),
          ],
        ),
        title: const Text(
          'الرئيسية',
          style: TextStyle(
            fontFamily: kmainfont,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.mms);
              },
              icon: const Icon(
                Icons.menu,
                color: Color(kmaincolor),
              )),
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: const Column(
          children: [
            FirstMainList(),
            MainRow2TXT(text1: 'الكل', text2: 'الاقسام'),
            SecondMainList(),
            MainRow2TXT(text1: 'الكل', text2: 'القصص'),
            ThirdMainList(),
            MainRow2TXT(text1: 'الكل', text2: 'مقدمى الخدمه'),
            FourthMainList(),
            MainRow2TXT(text1: 'الكل', text2: 'المنتجات الجديدة'),
            FifthMainList(width: 270, height: 240),
            MainRow2TXT(text1: 'الكل', text2: 'المنتجات الاكثر مبيعا'),
            FifthMainList(width: 200, height: 220),
            MainRow2TXT(text1: 'الكل', text2: 'المنتجات'),
            FifthMainList(width: 200, height: 220),
          ],
        ),
      ),
    );
  }
}
