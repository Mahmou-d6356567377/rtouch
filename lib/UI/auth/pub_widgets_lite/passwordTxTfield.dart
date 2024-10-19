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
        width: 400,  // CSS width
        height: 63,  // CSS height
        decoration: BoxDecoration(
          color: Colors.white,  // Background color from CSS
          borderRadius: BorderRadius.circular(10),  // CSS border-radius
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),  // Shadow from CSS
              blurRadius: 6,  // Shadow blur radius
              offset: const Offset(0, 3),  // Shadow offset from CSS
            ),
            // Optional inset shadow for a similar effect as CSS
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 6,
              offset: const Offset(0, 3),
              spreadRadius: -6,  // Simulates the inset shadow
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
            hintStyle: const TextStyle(),
            alignLabelWithHint: true,
            hintTextDirection: TextDirection.rtl,  // RTL hint text direction
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),  // CSS border-radius
              borderSide: BorderSide.none,  // Remove border, only show shadow
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,  // Keep no border on focus
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
