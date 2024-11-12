import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class Followbutton extends StatefulWidget {
  const Followbutton({
    super.key,
    required this.height,
    required this.width, required this.fontsize,
  });
  final double height;
  final double width;
  final double fontsize;
  @override
  State<Followbutton> createState() => _FollowbuttonState();
}

class _FollowbuttonState extends State<Followbutton> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          flag = !flag;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: [
            // Outer shadow and rounded corners
            Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Outer shadow color
                    spreadRadius: -2,
                    blurRadius: 10,
                    offset: const Offset(0, 0), // Shadow position
                  ),
                ],
              ),
            ),
            // Inner shadow layer
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: -3,
                      blurRadius: 5,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Center(
                    child: flag
                        ? Text(
                            'متابعة',
                            style: arabicstyle5.copyWith(
                                fontSize: widget.fontsize,
                                fontWeight: FontWeight.w500,
                                color: const Color(kmaincolor)),
                          )
                        : Text(
                            'الغاء',
                            style: arabicstyle5.copyWith(
                                fontSize: widget.fontsize,
                                fontWeight: FontWeight.w500,
                                color: const Color(kmaincolor)),
                          )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
