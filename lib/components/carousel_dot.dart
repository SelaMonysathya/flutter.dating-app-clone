import 'package:dating_app_clone/theme/color.dart';
import 'package:flutter/material.dart';

class CarouselDot extends StatelessWidget {
  final bool isActive;

  const CarouselDot({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? primary : bgBorder
        ),
      ),
    );
  }
}