import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/cart/screens/special_size_screen/widgets/special_size_item.dart';
import 'package:rtouch/UI/pub_widgets/custom_button1.dart';
import 'package:rtouch/UI/my_account_screans/widgets/save_button.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class SpecialSizeScreen extends StatefulWidget {
  const SpecialSizeScreen({super.key});

  @override
  State<SpecialSizeScreen> createState() => _SpecialSizeScreenState();
}

class _SpecialSizeScreenState extends State<SpecialSizeScreen> {
  int? selectedIdx;

  void onSelect(int index) {
    setState(() {
      selectedIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'مقاسات خاصة',
          style: arabicstyle8,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text('المقاس', style: arabicstyle5),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text('الطول', style: arabicstyle5),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text('العرض', style: arabicstyle5),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text('الرقبة', style: arabicstyle5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return SpecialSizeItem(
                  size: 30,
                  tall: 100,
                  width: 80,
                  sizeofbutton:  '4XL',
                  isSelected: selectedIdx == index,
                  onSelect: () => onSelect(index),
                );
              },
            ),
          ),
          CustomButton1(title: 'تاكيد', function: (){

          }),
        ],
      ),
    );
  }
}
