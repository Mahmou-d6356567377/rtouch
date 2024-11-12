import 'package:flutter/material.dart';

class CustomFavoriteIcon extends StatefulWidget {
  const CustomFavoriteIcon({
    super.key,
  });

  @override
  State<CustomFavoriteIcon> createState() => _CustomFavoriteIconState();
}

class _CustomFavoriteIconState extends State<CustomFavoriteIcon> {
  bool clicked = false;
  @override
  void initState() {
    clicked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite, color: clicked? Colors.red : Colors.white),
      onPressed: () {
        setState(() {
          clicked = !clicked;
        });
      },
    );
  }
}
