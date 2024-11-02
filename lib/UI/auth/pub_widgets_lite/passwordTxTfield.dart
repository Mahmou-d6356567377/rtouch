import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool notsecure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,  
        height: 63,  
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16), 
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 6,
              offset: const Offset(0, 3),
              spreadRadius: -6, 
            ),
          ],
        ),
        child: TextFormField(
          controller: widget.controller,
          validator: (value) {
            if (value == null || value.toString().isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
          obscureText: !notsecure,
          textDirection: TextDirection.rtl,  // RTL for right-aligned text
          textAlign: TextAlign.right,  // Align text to the right
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,  // Background color for the field
            hintText: widget.hintText,
            hintTextDirection: TextDirection.rtl,  // RTL hint text direction
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
            prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  notsecure = !notsecure;
                });
              },
              icon: notsecure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
          ),
        ),
      ),
    );
  }
}
