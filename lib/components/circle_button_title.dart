
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class CircleButtonTitle extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color? bgColor;
  final bool hasSubIcon;
  
  const CircleButtonTitle({
    Key? key, 
    required this.title,
    required this.icon,
    this.bgColor = bg,
    this.hasSubIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: bgColor,
                boxShadow: [
                  BoxShadow(
                    color: bg.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 33,
                    offset: Offset(0, 3),
                  )
                ]
              ),
              child: icon
            ),
            hasSubIcon 
            ? Positioned(
              bottom: 0,
              right: -8,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 33,
                      offset: Offset(0, 3)
                    )
                  ]
                ),
                child: Icon(Icons.add, color: primary,),
              ),
            )
            : SizedBox()
          ],
        ),
        SizedBox(height: defaultSmallPadding,),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: black.withOpacity(0.4),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}