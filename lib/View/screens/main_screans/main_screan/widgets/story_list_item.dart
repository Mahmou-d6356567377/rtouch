import 'package:flutter/material.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/story_view_screen/story_view_screen.dart';
import 'package:rtouch/Core/constants/constants.dart';

class StoryListItem extends StatelessWidget {
  const StoryListItem({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoryViewScreen(index: index),
            ),
          );
        },
        child: Container(
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.black,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child:
                Image.asset(img, fit: BoxFit.fill), // Replace with your image
          ),
        ),
      ),
    );
  }
}
