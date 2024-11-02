import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/pub_widgets/circuler_img_widget.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الشروط والاحكام',
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
