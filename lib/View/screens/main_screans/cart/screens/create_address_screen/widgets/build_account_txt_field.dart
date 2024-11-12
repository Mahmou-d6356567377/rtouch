import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class BuildAddressTxTField extends StatelessWidget {
  const BuildAddressTxTField({
    super.key,
    required TextEditingController controller3, required this.title,
  }) : _controller3 = controller3;

  final TextEditingController _controller3;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controller3,
        decoration: InputDecoration(
          hintText: 'Address',
          hintStyle: arabicstyle4,
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
