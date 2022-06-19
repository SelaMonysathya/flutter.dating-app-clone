
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class MessageTitle extends StatelessWidget {
  final String title;

  const MessageTitle({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
    );
  }
}
