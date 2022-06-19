
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: black.withOpacity(0.4),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: defaultMediumPadding),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          borderSide: BorderSide(width: 1, color: bgBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          borderSide: BorderSide(width: 1, color: bgBorder),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultMediumPadding),
          child: SvgPicture.asset("assets/images/search.svg"),
        ),
        prefixIconConstraints: BoxConstraints(minHeight: 20, minWidth: 20),
        hintText: "Search",
        hintStyle: TextStyle(color: black.withOpacity(0.4))
      ),
    );
  }
}