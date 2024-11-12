import 'package:flutter/material.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/story_list_item.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class StoriesScrean extends StatelessWidget {
  const StoriesScrean({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('القصص', style: arabicstyle5,),
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return  Padding(
              padding:  const EdgeInsets.all(8.0),
              child: StoryListItem(index: index),
            );
          },
        ),
      ),
    );
  }
}