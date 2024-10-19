import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';

class SecondMainList extends StatelessWidget {
  const SecondMainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: [
                    
                      Container(
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                         child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                      child: Image.asset(img, fit: BoxFit.fill,)),
                      ),
                        Positioned(
                        bottom: 25,
                        right: 0,
                        child: Container(
                          height: 40, 
                          width: 120, 
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 244, 135, 171),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(17),
                              bottomLeft: Radius.circular(17),
                              ), 
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
