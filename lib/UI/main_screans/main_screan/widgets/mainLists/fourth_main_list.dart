import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/fourth_list_item.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class FourthMainList extends StatelessWidget {
  const FourthMainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.pds1);
                    },
                    child: const Fourthmainlistitem(),
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
