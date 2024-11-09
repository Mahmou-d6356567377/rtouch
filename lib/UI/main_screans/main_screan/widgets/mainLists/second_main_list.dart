import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/category_list_Item.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class SecondMainList extends StatelessWidget {
  const SecondMainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> screans = [
      AppRoutes.wcs,
      AppRoutes.mcs,
      AppRoutes.wcs,
    ];
    return SizedBox(
      height: 115,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CategoryListItem(screan: screans[index])
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
