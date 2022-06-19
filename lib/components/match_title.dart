
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class MatchTitle extends StatelessWidget {
  final String title;

  const MatchTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: bgBorder,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultMediumPadding),
          child: Text(title, style: TextStyle(fontSize: 12),),
        ),
        Expanded(child: Divider(color: bgBorder,)),
      ],
    );
  }
}