import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/fourth_list_item.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ServiceProviderAll extends StatelessWidget {
  const ServiceProviderAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('مقدمى الخدمة', style: arabicstyle5,),
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 80,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Fourthmainlistitem(),
            );
          },
        ),
      ),
    );
  }
}