
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleButton extends StatelessWidget {
  final double? height, width;
  final String svgPicture;
  final Color? bgColor, shadowColor;
  final VoidCallback onTap;
  
  const CircleButton({
    Key? key, 
    this.height = 78, 
    this.width = 78, 
    required this.svgPicture,
    this.bgColor,
    this.shadowColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(height! / 2),
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor!,
              spreadRadius: 1,
              blurRadius: 33,
              offset: Offset(0, 3),
            )
          ]
        ),
        child: SvgPicture.asset(svgPicture),
      ),
    );
  }
}