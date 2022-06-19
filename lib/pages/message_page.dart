
import 'package:dating_app_clone/components/box_svg_button.dart';
import 'package:dating_app_clone/components/message_activity_card.dart';
import 'package:dating_app_clone/components/message_listtile.dart';
import 'package:dating_app_clone/components/message_title.dart';
import 'package:dating_app_clone/components/search_textfield.dart';
import 'package:dating_app_clone/dummy_data/message_page_json.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({ Key? key }) : super(key: key);

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
                "Messages",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              BoxSvgButton(
                onTap: () {},
                svgPicture: "assets/images/filter.svg",
              ),
            ],
          ),
        ),
      ),
    ); 
  }

  Widget getBody(Size size) {
    return ListView(
      children: [
        SizedBox(height: defaultMediumPadding,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: SearchTextField(),
        ),
        MessageTitle(title: "Activities",),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(activities.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? defaultPadding : defaultPadding,
                  right: index == (activities.length - 1) ? defaultPadding : 0
                ),
                child: MessageActivityCard(itemList: activities[index],),
              );
            }),
          ),
        ),
        MessageTitle(title: "Messages",),
        Column(
          children: List.generate(messages.length, (index) {
            return MessageListTitle(
              onTap: () {},
              itemList: messages[index],
            );
          }),
        ),
        SizedBox(height: defaultPadding,),
      ],
    );
  }
}
