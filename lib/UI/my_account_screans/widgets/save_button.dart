import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class SaveButton extends StatelessWidget {
   SaveButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  void _submitForm({
    required String email,
    required String name,
    required String phone,
  }) {


  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.symmetric(horizontal: 35,vertical: 20),
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _submitForm(
                email: _emailController.text,
                name: _nameController.text,
                phone: _phoneController.text);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Validation Error')));
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(kmaincolor),
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          'حفظ',
          style:
              arabicstyle6.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
