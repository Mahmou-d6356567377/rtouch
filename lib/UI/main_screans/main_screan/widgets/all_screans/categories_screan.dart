import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/category_list_Item.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class CategoriesScrean extends StatelessWidget {
  const CategoriesScrean({super.key});

  @override
  Widget build(BuildContext context) {
        List<String> screans = [
      AppRoutes.wcs,
      AppRoutes.mcs,
      AppRoutes.wcs,
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('الاقسام', style: arabicstyle5,),
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return  Padding(
              padding:  const EdgeInsets.all(8.0),
              child: CategoryListItem(screan: screans[index]),
            );
          },
        ),
      ),
    );
  }
}