import 'package:flutter/material.dart';
import 'package:rtouch/UI/my_chat_screans/widgets/chat_item.dart';

class MyChatScrean extends StatelessWidget {
  const MyChatScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
           ChatItem(),
          
        ],),
      ),
    );
  }
}