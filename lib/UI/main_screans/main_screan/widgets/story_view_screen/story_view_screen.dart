import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/story_view_screen/widgets/custom_favorite_icon.dart';
import 'package:rtouch/UI/main_screans/product_details_screan1/widgets/followButton.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/utils.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryViewScreen extends StatelessWidget {
  final int index;
  final StoryController _storyController = StoryController();

  StoryViewScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(kmaincolor),
        title: const Text('Story View', style: arabicstyle6),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.pageImage(
                url: "https://via.placeholder.com/150",
                controller: _storyController,
                caption: const Text("Story 1"),
              ),
              StoryItem.pageImage(
                url: "https://via.placeholder.com/150",
                controller: _storyController,
                caption: const Text("Story 2"),
              ),
              StoryItem.pageImage(
                url: "https://via.placeholder.com/150",
                controller: _storyController,
                caption: const Text("Story 3"),
              ),
            ],
            controller: _storyController,
            onStoryShow: (storyItem, int? index) {
              print("Showing story: $storyItem at index: $index");
            },
            onComplete: () {
              print("Completed stories");
              Navigator.pop(context);
            },
            onVerticalSwipeComplete: (direction) {
              if (direction == Direction.down) {
                Navigator.pop(context);
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
              color: const Color(kmaincolor).withOpacity(.4),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const  Icon(Icons.remove_red_eye, color: Colors.white),
                  const CustomFavoriteIcon(),
                  const Expanded(
                    child: Column(
                    children: [
                      Text('تصميمات ليلى', style: arabicstyle6,),
                      Padding(
                        padding:  EdgeInsets.only(top: 5.0),
                        child: Followbutton(height: 15, width: 50, fontsize: 10,),
                      ),
                    ],
                    ),
                  ),
                 ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  
                  child: Image.asset(img,)),
 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}