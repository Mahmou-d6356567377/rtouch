import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/auth/pub_widgets_lite/customTextField.dart';
import 'package:rtouch/UI/pub_widgets/circuler_img_widget.dart';
import 'package:rtouch/UI/my_account_screans/widgets/edit_account_txt_field.dart';
import 'package:rtouch/UI/my_account_screans/widgets/save_button.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class MyAccountScrean extends StatelessWidget {
  const MyAccountScrean({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
 late TextEditingController nameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();
  void submitForm({
    required String email,
    required String name,
    required String phone,
  }) {


  }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'تعديل الحساب',
          style:
              arabicstyle5.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const  CircluerImgWidget(img: img, radius: 60),
             EditAccountTXTField(icon: Icons.person, title: 'الاسم', controller: nameController,),
             EditAccountTXTField(icon: Icons.email, title: 'البريد', controller: emailController,),
             EditAccountTXTField(icon: Icons.phone, title: 'الهاتف', controller: phoneController,),
              Container(
      margin: const  EdgeInsets.symmetric(horizontal: 35,vertical: 20),
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            submitForm(
                email: emailController.text,
                name: nameController.text,
                phone: phoneController.text);
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
          'حفظ',
          style:
              arabicstyle6.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    )
            ],
          ),
        ),
      ),
    );
  }
}
