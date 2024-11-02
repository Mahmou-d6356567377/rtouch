import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class EditAccountTXTField extends StatelessWidget {
  const EditAccountTXTField({
    super.key, required this.icon, required this.title, required this.controller,
  });
  final IconData icon;
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: TextFormField(
        controller: controller,
            validator: (value) {
            if (value == null || value.toString().isEmpty) {
              return 'يجت ان تملأ الحقل';
            }
            return null;
          },
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.white,
          hintText: title,
          hintStyle: arabicstyle5,
          alignLabelWithHint: true,
          hintTextDirection: TextDirection.ltr,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(kmaincolor), width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(kmaincolor), width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
