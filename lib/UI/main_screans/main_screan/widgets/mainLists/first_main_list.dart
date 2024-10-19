import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';

class FirstMainList extends StatelessWidget {
  const FirstMainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Expanded( 
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 300,  
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
