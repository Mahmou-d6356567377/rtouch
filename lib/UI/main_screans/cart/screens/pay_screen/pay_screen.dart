import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/pub_widgets/custom_button1.dart';
import 'package:rtouch/UI/main_screans/cart/widgets/pay_data_container.dart';
import 'package:rtouch/UI/pub_widgets/textfield_and_button.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  bool isclicked = false;
  @override
  void initState() {
    isclicked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الدفع',
          style: arabicstyle5.copyWith(fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: kmainboxDecoration2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Payment Method',
                    style: arabicstyle8.copyWith(
                        fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isclicked = !isclicked;
                      });
                    },
                    child: Container(
                      decoration: !isclicked?kmainBoxDecoration4:kmainBoxDecoration3,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 50, child: Image.asset(kwebhouse)),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 20, child: Image.asset(kmaster)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                SizedBox(height: 20, child: Image.asset(kmada)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 50,
                                child: !isclicked?Image.asset(kselectedCircleIcon):Image.asset(kunselectedCircleIcon)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isclicked = !isclicked;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      decoration: isclicked?kmainBoxDecoration4:kmainBoxDecoration3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 50, child: Image.asset(kwebhouse)),
                          ),
                          const Spacer(),
                          SizedBox(height: 30, child: Image.asset(kstc)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 50,
                                child: isclicked?Image.asset(kselectedCircleIcon):Image.asset(kunselectedCircleIcon)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: kmainboxDecoration2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: Text(
                        'Discount Code',
                        style: arabicstyle8.copyWith(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ),
                    TextFieldAndButton(
                        hint: 'Enter Discount code ', buttonTitle: 'Check'),
                  ],
                )),
            const PayDataContainer(),
            CustomButton1(title: 'Buy', function: () {}),
          ],
        ),
      ),
    );
  }
}
