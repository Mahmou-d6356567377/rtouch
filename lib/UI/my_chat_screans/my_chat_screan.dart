import 'package:flutter/material.dart';
import 'package:rtouch/UI/my_chat_screans/widgets/chat_item.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class MyChatScrean extends StatelessWidget {
  const MyChatScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
           ChatItem(),
        ],),
      ),
    );
  }
}