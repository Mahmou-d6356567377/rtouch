import 'package:flutter/material.dart';
import 'package:rtouch/View/pub_widgets/buttons/size_button.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class SpecialSizeItem extends StatelessWidget {
  const SpecialSizeItem({
    super.key,
    required this.size,
    required this.tall,
    required this.width,
    required this.sizeofbutton,
    required this.isSelected,
    required this.onSelect,
  });

  final int size;
  final int tall;
  final int width;
  final String sizeofbutton;
  final bool isSelected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: isSelected
            ? kmainBoxDecoration7
            : kmainBoxDecoration6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text('$size', style: arabicstyle5),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('$tall', style: arabicstyle5),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('$width', style: arabicstyle5),
              ),
            ),
            Expanded(
              child: Center(
                child: SizeButton(
                  selectedSize: sizeofbutton,
                  size:  sizeofbutton,
                  selectedColor:  isSelected ? Colors.orange : Colors.white, 
                  unselectedColor:  Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
