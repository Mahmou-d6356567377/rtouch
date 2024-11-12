import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/pub_widgets/arabicTXT2.dart';
import 'package:rtouch/View/screens/auth/pub_widgets_lite/customTextField.dart';
import 'package:rtouch/View/screens/auth/pub_widgets_lite/custom_phone_text_field.dart';
import 'package:rtouch/View/screens/auth/pub_widgets_lite/passwordTxTfield.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class BuildAccountScrean extends StatefulWidget {
  const BuildAccountScrean({super.key});

  @override
  State<BuildAccountScrean> createState() => _BuildAccountScreanState();
}

class _BuildAccountScreanState extends State<BuildAccountScrean> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void _submitForm() async {
    if (confirmpasswordController.text != passwordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('تاكيد كلمه المرور ليس مثل كلمه المرور'),
            ],
          ),
        ),
      );
      return;
    }

    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> body = {
        "name": nameController.text,
        "phone": phoneController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "fcm":
            'd-G53x4dQCKm0IA3qS3cUb:APA91bFTsbA-ZQE-PF4v0hwUY-LV09ecPg9jjJrkJLAWPLavIxiMG5CDiF7XXHmc55bVpscMVDPLtnOVrvHACM__MDX5cDqVVgonhgtZXMVbJIMlegJThJ6nEoSKeO3rfefKv4z32kgH', // Pass the token
      };

      //context.read<RegisterCubit>().fetchRegisterdata(body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [

        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 6,
                spreadRadius: 3,
                offset: Offset(0, 0),
              )
            ]
          ),
          child: const CircleAvatar(
            radius: 130,
            backgroundImage: AssetImage(
              img,
            ),
          ),
        ),
              const Arabictext2(
                arabicText: ' اسم المستخدم',
              ),
              CustomTextField(
                hintText: ' اسم المستخدم',
                prefixIcon: const Icon(Icons.handshake),
                controller: nameController,
              ),
              const Arabictext2(
                arabicText: 'رقم الجوال',
              ),
              CustomIntlPhoneField(
                hintText: 'رقم الجوال',
                controller: phoneController,
              ),
              const Arabictext2(
                arabicText: 'البريد الالكترونى',
              ),
              CustomTextField(
                isEmail: true,
                hintText: '***@gmail.com',
                prefixIcon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                controller: emailController,
              ),
              const Arabictext2(
                arabicText: 'كلمة السرى',
              ),
              PasswordTextField(
                hintText: 'كلمة السرى',
                controller: passwordController,
              ),
              const Arabictext2(
                arabicText: 'تاكيد كلمة السرى',
              ),
              PasswordTextField(
                hintText: 'كلمة السري',
                controller: confirmpasswordController,
              ),
              const Arabictext2(
                arabicText: ' مكان المستخدم',
              ),
              CustomTextField(
                hintText: ' مكان المستخدم',
                prefixIcon: const Icon(Icons.handshake),
                controller: nameController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: const Text('سجل دخول', style: arabicstyle2),
                  ),
                  const Text(
                    'تملك حساب ؟',
                    style: arabicstyle4,
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                child: GestureDetector(
                  onTap: _submitForm,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitForm();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Validation Error')));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(kmaincolor),
                        minimumSize: const Size.fromHeight(50),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'تسجيل',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: kmainfont,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
