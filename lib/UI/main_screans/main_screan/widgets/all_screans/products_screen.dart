import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/product_list_screen.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('القصص', style: arabicstyle5,),
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
              child: ProductListItem(width: 200, height: 220)
            );
          },
        ),
      ),
    );
  }
}