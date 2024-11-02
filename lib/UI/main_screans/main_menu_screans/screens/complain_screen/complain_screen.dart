import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/pub_widgets/custom_txt_field2.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({super.key});
  @override
  Widget build(BuildContext context) {
  TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '(Administration)',
          style: arabicstyle8.copyWith(fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 35,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const  EdgeInsets.all(10),
              decoration: kmainBoxDecoration3,
            )),
          CustomTextField2(
              hintText: 'نص الرسالة',
              prefixIcon: const Icon(Icons.send, size: 35,),
              controller: controller),
        ],
      ),
    );
  }
}
