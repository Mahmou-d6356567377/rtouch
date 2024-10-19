import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ProductQuantityRepresent extends StatelessWidget {
  const ProductQuantityRepresent({
    super.key, required this.pquantity,
  });

  final int pquantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(2),
      decoration: kmainboxDecoration2.copyWith(
          gradient:const  RadialGradient(colors: [
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
         Color.fromARGB(255, 237, 235, 235),
         Color.fromARGB(255, 225, 225, 225),
      ])),
      child: Text(
        pquantity.toString(),
        style: arabicstyle4.copyWith(fontSize: 20, color: Colors.blueGrey),
      ),
    );
  }
}
