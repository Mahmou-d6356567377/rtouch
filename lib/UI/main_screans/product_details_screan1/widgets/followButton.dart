import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class Followbutton extends StatelessWidget {
  const Followbutton({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){


        //TODO follow actions
      },
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: [
            // Outer shadow and rounded corners
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Outer shadow color
                    spreadRadius: -2,
                    blurRadius: 10,
                    offset: Offset(0, 0), // Shadow position
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
                child: Center(child: Text('متابعة', style: arabicstyle5.copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: const  Color(kmaincolor)),)),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
