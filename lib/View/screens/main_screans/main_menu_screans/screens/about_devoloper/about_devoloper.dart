import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/pub_widgets/circuler_img_widget.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class AboutDevoloper extends StatelessWidget {
  const AboutDevoloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'عن المطور',
          style: arabicstyle5.copyWith(fontSize: 20),
        ),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
            centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 300,
            child: CircluerImgWidget(img: img, radius: 120)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Touch', style: arabicstyle8.copyWith(fontWeight: FontWeight.w500, fontSize: 20),)],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Application Version: ', style: arabicstyle8.copyWith(fontWeight: FontWeight.w500, fontSize: 20),),
              Text('1.0.0', style: arabicstyle8.copyWith(fontWeight: FontWeight.bold, fontSize: 20),)],),
            ),            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Design and programming', style: arabicstyle8.copyWith(fontWeight: FontWeight.w500, fontSize: 20),)],),
            ),

        ],
      ),
    );
  }
}
