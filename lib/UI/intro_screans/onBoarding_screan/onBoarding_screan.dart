import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/intro_screans/Intro_screans_1/pg1.dart';
import 'package:rtouch/UI/intro_screans/Intro_screans_1/pg2.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScrean extends StatefulWidget {
  const OnBoardingScrean({super.key});

  @override
  State<OnBoardingScrean> createState() => _OnBoardingScreanState();
}

class _OnBoardingScreanState extends State<OnBoardingScrean> {
  PageController pagecontroller = PageController();
  
  @override
  void initState() {
    super.initState();
    pagecontroller.addListener(() {
      if (pagecontroller.page == 1.0) {
        GoRouter.of(context).push(AppRoutes.ls);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pagecontroller,
            children: const [
              IntroPage1(),
              IntroPage2(),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.55),  
            child: SmoothPageIndicator(
              controller: pagecontroller,
              count: 2,
              effect: const WormEffect(
                dotWidth: 10.0,
                dotHeight: 10.0,
                paintStyle: PaintingStyle.fill,
                activeDotColor: Color(kmaincolor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
