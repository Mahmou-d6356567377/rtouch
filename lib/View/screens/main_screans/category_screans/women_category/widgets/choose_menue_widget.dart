import 'package:flutter/material.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class ChooseMenuWidget extends StatefulWidget {
  const ChooseMenuWidget({super.key});

  @override
  _ChooseMenuWidgetState createState() => _ChooseMenuWidgetState();
}

class _ChooseMenuWidgetState extends State<ChooseMenuWidget> {
  String? selectedValue; 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        border: const Border(
          bottom: BorderSide(color: Colors.grey),
          left: BorderSide(color: Colors.grey),
          right: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          Text(
            'اختر',
            style: arabicstyle5.copyWith(fontSize: 20),
          ),
          const Spacer(), 
          DropdownButton<String>(
            menuWidth: 100,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            value: selectedValue,
            underline: Container(),
            icon: const Icon(Icons.arrow_drop_down),
            items: ['اختر', 'الاسم', 'الاعلى سعر', 'الاقل سعر'].map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
