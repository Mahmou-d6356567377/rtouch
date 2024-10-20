import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class FourthRowProductDetails extends StatelessWidget {
  const FourthRowProductDetails({
    super.key, required this.price,
  });
  final int price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(kmaincolor),
              border: const Border(
                  right: BorderSide(color: Colors.blueGrey, width: 1),
                  left: BorderSide(color: Colors.blueGrey, width: 1),
                  bottom: BorderSide(color: Colors.blueGrey, width: 1)),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 210, 204, 204).withOpacity(.9),
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ]),
          child: Row(
            children: [
              Text(
                'اضافة للسلة',
                style: arabicstyle6.copyWith(fontSize: 17),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Text(
          ' ريال ',
          style: arabicstyle5.copyWith(fontSize: 15),
        ),
        Text(
          price.toString(),
          style: arabicstyle5.copyWith(fontSize: 15),
        ),
      ],
    );
  }
}
