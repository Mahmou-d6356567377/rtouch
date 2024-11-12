import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class TextFieldAndButton extends StatelessWidget {
  const TextFieldAndButton({
    super.key,
    required this.hint,
    required this.buttonTitle,
  });
  final String hint;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(kmaincolor), width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: hint,
                  fillColor: Colors.grey[200],
                  hintStyle: arabicstyle4.copyWith(fontSize: 19, fontWeight: FontWeight.normal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(kmaincolor),
                      borderRadius: BorderRadius.circular(14)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        buttonTitle,
                        style: arabicstyle6.copyWith(fontSize: 16),
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
