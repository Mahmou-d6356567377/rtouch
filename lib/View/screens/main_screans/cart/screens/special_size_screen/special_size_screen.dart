import 'package:flutter/material.dart';
import 'package:rtouch/View/pub_widgets/buttons/fac_method_buttons/abstract_buttons_class.dart';
import 'package:rtouch/View/pub_widgets/buttons/fac_method_buttons/factory_class.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/special_size_screen/widgets/special_size_item.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

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
    final CustomButton button1 = CustomButtonFactory.createButton('CustomButton1');
    
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
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
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
                  sizeofbutton: '4XL',
                  isSelected: selectedIdx == index,
                  onSelect: () => onSelect(index),
                );
              },
            ),
          ),
          button1.button('تاكيد', (){}),
        ],
      ),
    );
  }
}
