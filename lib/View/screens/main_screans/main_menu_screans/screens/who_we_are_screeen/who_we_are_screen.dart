import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/pub_widgets/circuler_img_widget.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class WhoWeAreScreen extends StatelessWidget {
  const WhoWeAreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'من نحن',
          style: arabicstyle5.copyWith(fontSize: 20),
        ),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
            centerTitle: true,
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 300,
            child: CircluerImgWidget(img: img, radius: 120))
        ],
      ),
    );
  }
}
