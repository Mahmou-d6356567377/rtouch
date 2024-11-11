// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/auth/pub_widgets_lite/custom_phone_text_field.dart';
import 'package:rtouch/UI/auth/pub_widgets_lite/passwordTxTfield.dart';
import 'package:rtouch/UI/intro_screans/widgets/intro_logo_widget.dart';
import 'package:rtouch/UI/pub_widgets/custom_button1.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({super.key});

  @override
  State<LoginScrean> createState() => _RegisterScreanState();
}

class _RegisterScreanState extends State<LoginScrean> {
  bool checkphone = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();

  void _submitForm({
    required String emailOrphone1,
    required String password,
    required bool isphone,
  }) {
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Container(
        color: const Color(kmaincolor),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 SizedBox(height: 10.h,),
                  const IntroLogoWidget(),
                       const Text( 'مرحبا بعودتك' , style: arabicstyle1),
                
                     CustomIntlPhoneField(
                            hintText: 'رقم الجوال',
                            controller: phonecontroller,
                          ),
                    PasswordTextField(
                      hintText: 'الرقم السرى',
                      controller: passwordController,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text( 'هل نسيت الرقم السري ؟' , style:arabicstyle2),
                      ],
                    ),
                     const SizedBox(
                      height: 60,
                    ),
                 
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                     child: CustomButton1(title: 'تسجيل الدخول', 
                     function: () {
                          if (_formKey.currentState!.validate()) {
                       _submitForm(
                         emailOrphone1: checkphone
                             ? phonecontroller.text
                             : emailController.text,
                         password: passwordController.text,
                         isphone: checkphone,
                       );
                     } else {
                       ScaffoldMessenger.of(context)
                           .showSnackBar(const SnackBar(
                               content:
                           Text('Validation Error')));
                     }
                         },)
                   ),
                 GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.cbnbs);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:
                         Text(
                           'متابعه كزائر',
                           style: arabicstyle3,
                         )
                
                             ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                          GoRouter.of(context).push(AppRoutes.bas);
                          },
                          child: const Text('سجل الان',
                              style: arabicstyle2
                              ),
                        ),
                        const Text( 'لا تملك حساب ؟', style: arabicstyle4,),
                      ],
                    ),
                   SizedBox(height: 10.h,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
