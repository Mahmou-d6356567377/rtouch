import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';

class ThirdMainList extends StatelessWidget {
  const ThirdMainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:  Color.fromARGB(255, 216, 216, 216),
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded( 
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 120,  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black,
                    ),
                     child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                      child: Image.asset(img, fit: BoxFit.fill,)),
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
