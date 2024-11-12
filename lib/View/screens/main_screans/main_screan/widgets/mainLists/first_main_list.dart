import 'package:flutter/material.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstMainList extends StatefulWidget {
  const FirstMainList({Key? key}) : super(key: key);

  @override
  _FirstMainListState createState() => _FirstMainListState();
}

class _FirstMainListState extends State<FirstMainList> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double scale = 1.0;
                  if (_pageController.position.haveDimensions) {
                    scale = _pageController.page == index
                        ? 1.0
                        : 0.9; // scale down inactive pages
                  }
                  return Transform.scale(
                    scale: scale,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(
                            img, // replace with your image path
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect:ExpandingDotsEffect(
  dotHeight: 8,
  dotWidth: 8,
  expansionFactor: 3,
  activeDotColor: Colors.black,
  dotColor: Colors.grey.shade300,
)

        ),
      ],
    );
  }
}
