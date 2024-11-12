import 'package:flutter/material.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/story_list_item.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/story_view_screen/story_view_screen.dart';
import 'package:rtouch/Core/constants/constants.dart';

class ThirdMainList extends StatelessWidget {
  const ThirdMainList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 216, 216, 216),
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
                return StoryListItem(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}