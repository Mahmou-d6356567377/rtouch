import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomIntlPhoneField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomIntlPhoneField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color for the container
          borderRadius: BorderRadius.circular(17), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4), // Shadow positioned outward
            ),
          ],
        ),
        child: IntlPhoneField(
          initialCountryCode: 'SA',
          controller: controller,
          validator: (value) {
            if (value == null || value.toString().isEmpty) {
              return 'يرجى ادخال رقم الهاتف';
            }
            return null;
          },
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            alignLabelWithHint: true,
            hintTextDirection: TextDirection.ltr,
            border: InputBorder.none, // Remove the border
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ), 
          ),
        ),
      ),
    );
  }
}
