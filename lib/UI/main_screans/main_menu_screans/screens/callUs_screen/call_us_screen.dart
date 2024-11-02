import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/category_screans/women_category/widgets/main_row_txt.dart';
import 'package:rtouch/UI/pub_widgets/circuler_img_widget.dart';
import 'package:rtouch/UI/pub_widgets/custom_txt_field2.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class CallUsScreen extends StatelessWidget {
  const CallUsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    GlobalKey<FormState> key = GlobalKey<FormState>();
    void submitForm({
      required String title,
      required String content,
    }) {}
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تواصل معنا',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Form(
          key: key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircluerImgWidget(img: img, radius: 120),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تواصل معنا عبر',
                      style: arabicstyle8.copyWith(fontSize: 20),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.phone)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'أو أرسل رسالتك لأدارة التطبيق',
                      style: arabicstyle8.copyWith(fontSize: 20),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'عنوان الرسالة',
                        style: arabicstyle8.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.5, color: const Color(kmaincolor)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    controller: controller1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'يجب كتابة عنوان الرسالة';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'محتوى الرسالة',
                        style: arabicstyle8.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.5, color: const Color(kmaincolor)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    controller: controller1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'يجب كتابة عنوان الرسالة';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.symmetric( vertical: 20),
                  width: MediaQuery.sizeOf(context).width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        submitForm(
                          title: controller1.text,
                          content: controller2.text,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Validation Error')));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(kmaincolor),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'ارسال',
                      style: arabicstyle6.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
