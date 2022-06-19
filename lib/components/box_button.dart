
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class BoxButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  
  const BoxButton({
    Key? key, 
    required this.text, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(defaultBorderRadius),
      child: Container(
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          color: primary
        ),
        child: Text(
          text, 
          style: TextStyle(
            color: white, 
            fontSize: 16, 
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}