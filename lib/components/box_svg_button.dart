
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxSvgButton extends StatelessWidget {
  final String svgPicture;
  final VoidCallback onTap;
  
  const BoxSvgButton({
    Key? key, 
    required this.svgPicture, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(defaultBorderRadius),
      child: Container(
        height: 52,
        width: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          border: Border.all(width: 1, color: bgBorder)
        ),
        child: SvgPicture.asset(svgPicture),
      ),
    );
  }
}