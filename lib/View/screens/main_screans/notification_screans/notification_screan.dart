import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/screens/main_screans/notification_screans/widgets/notification_container.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class NotificationScrean extends StatelessWidget {
  const NotificationScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, size: 30,)),
        title: Text(
          'الاشعارات',
          style: arabicstyle5.copyWith(color: const Color(kmaincolor)),
        ),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NotificationContainer(time: '02:59:28', id: '86', date: '2024-10-22', msg: 'تم تسجيل حسابك بنجاح'),
          NotificationContainer(time: '02:59:28', id: '86', date: '2024-10-22', msg: 'تم تسجيل حسابك بنجاح'),
        ],
      ),
    );
  }
}