import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/create_address_screen/widgets/build_account_txt_field.dart';
import 'package:rtouch/View/screens/my_account_screans/widgets/save_button.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class CreateAddressScreen extends StatelessWidget {
  const CreateAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _key = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    TextEditingController _controller3 = TextEditingController();
    TextEditingController _controller4 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'انشاء عنوان جديد',
          style: arabicstyle8.copyWith(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
              color: Color(kmaincolor),
            )),
      ),
      body: Form(
        key: _key,
        child: Column(
          children: [
            BuildAddressTxTField(controller3: _controller1, title: 'City'),
            BuildAddressTxTField(controller3: _controller2, title: 'Addresses'),
            BuildAddressTxTField(
                controller3: _controller3, title: 'special mark'),
            BuildAddressTxTField(
                controller3: _controller4, title: 'building name or number'),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.gms);
              },
              child: Container(
                height: 60,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: kmainBoxDecoration4,
                child: const Row(
                  children: [
                    Text(
                      'Address on Map',
                      style: arabicstyle4,
                    ),
                  ],
                ),
              ),
            ),
            SaveButton(formKey: _key),
          ],
        ),
      ),
    );
  }
}
