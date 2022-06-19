import 'package:dating_app_clone/components/box_svg_button.dart';
import 'package:dating_app_clone/components/match_card.dart';
import 'package:dating_app_clone/components/match_title.dart';
import 'package:dating_app_clone/dummy_data/match_page_json.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: getAppBar(),
      body: getBody(size),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Matches",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              BoxSvgButton(
                onTap: () {},
                svgPicture: "assets/images/sort.svg",
              ),
            ],
          ),
        ),
      ),
    ); 
  }

  Widget getBody(Size size) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultMediumPadding),
          child: Text(
            "This is a list of people who have liked you and your matches.",
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ),
        MatchTitle(title: "Today",),
        SizedBox(height: defaultMediumPadding,),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: List.generate(todayMatchItems.length, (index) {
            return MatchCard(
              width: (size.width - 55) / 2,
              itemList: todayMatchItems[index],
            );
          }),
        ),
        SizedBox(height: defaultPadding,),
        MatchTitle(title: "Yesterday",),
        SizedBox(height: defaultMediumPadding,),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: List.generate(yesterdayMatchItems.length, (index) {
            return MatchCard(
              width: (size.width - 55) / 2,
              itemList: yesterdayMatchItems[index],
            );
          }),
        ),
        SizedBox(height: defaultPadding,),
      ],
    );
  }
}