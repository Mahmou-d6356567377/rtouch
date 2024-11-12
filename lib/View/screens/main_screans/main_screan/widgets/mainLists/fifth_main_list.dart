import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/product_list_screen.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';

class FifthMainList extends StatelessWidget {
  const FifthMainList({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ProductListItem(width: width, height: height);
              },
            ),
          ),
        ],
      ),
    );
  }
}