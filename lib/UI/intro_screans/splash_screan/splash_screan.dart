import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/routes/app_routes.dart';
import 'package:video_player/video_player.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(ksplashVideo)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });

    _controller.addListener(() {
      if (_controller.value.position == _controller.value.duration) {
        GoRouter.of(context).push(AppRoutes.obs);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        _controller.value.isInitialized
            ? Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 244, 235, 235),
              ),
              child: Center(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
            )
            : const CircularProgressIndicator(),
      ],
    );
  }
}
