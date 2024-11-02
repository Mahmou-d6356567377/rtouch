import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/my_orders_screen/widgets/order_details_container.dart';
import 'package:rtouch/UI/my_orders_screen/widgets/order_top_button1.dart';
import 'package:rtouch/UI/my_orders_screen/widgets/order_top_button2.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class DocsScrean extends StatefulWidget {
  const DocsScrean({super.key});

  @override
  State<DocsScrean> createState() => _DocsScreanState();
}

class _DocsScreanState extends State<DocsScrean> {
  bool flag1 = true;
  bool flag2 = false;
  bool flag3 = false;
  bool flag4 = false;

  void toggleButton(int buttonIndex) {
    setState(() {
      flag1 = buttonIndex == 1;
      flag2 = buttonIndex == 2;
      flag3 = buttonIndex == 3;
      flag4 = buttonIndex == 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My orders',
          style:
              arabicstyle8.copyWith(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(kmaincolor),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    toggleButton(1);
                  },
                  child: flag1
                      ? const OrderTopButton2(title: 'All')
                      : const OrderTopButton1(title: 'All'),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    toggleButton(2);
                  },
                  child: flag2
                      ? const OrderTopButton2(title: 'Processing')
                      : const OrderTopButton1(title: 'Processing'),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    toggleButton(3);
                  },
                  child: flag3
                      ? const OrderTopButton2(title: 'Shipped')
                      : const OrderTopButton1(title: 'Shipped'),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    toggleButton(4);
                  },
                  child: flag4
                      ? const OrderTopButton2(title: 'Delivered')
                      : const OrderTopButton1(title: 'Delivered'),
                ),
              ),
            ],
          ),
        
        flag1?  OrderDetailsContainer():Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Image.asset(kfolder),
        ),
        ],
      ),
    );
  }
}
