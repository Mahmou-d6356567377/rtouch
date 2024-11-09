import 'package:flutter/material.dart';
import 'package:rtouch/UI/pub_widgets/top_snake_bar.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool clicked = false;
  @override
  void initState() {
    clicked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
        });
        !clicked ? showTopSnackBar(context, 'تمت الازالة من  السلة' , const Color(kmaincolor))
:showTopSnackBar(context, 'تمت الاضافة الى السلة' , const Color(kmaincolor));

      },
      child: Container(
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
                color: const Color.fromARGB(255, 210, 204, 204).withOpacity(.9),
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(0, 1),
              ),
            ]),
        child: Row(
          children: [
            clicked?Text(
              'الغاء',
              style: arabicstyle6.copyWith(fontSize: 17),
            ): Text(
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
    );
  }
}
