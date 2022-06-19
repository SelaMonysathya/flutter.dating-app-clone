import 'package:dating_app_clone/components/box_svg_button.dart';
import 'package:dating_app_clone/components/circle_button.dart';
import 'package:dating_app_clone/components/discover_card.dart';
import 'package:dating_app_clone/dummy_data/home_page_json.dart';
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipecards/flutter_swipecards.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CardController controller = CardController();

  List items = [];
  int itemLength = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      items = discoverItems;
      itemLength = discoverItems.length;
    });
  }

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
            children: [
              Spacer(),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      "Discover",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("Phnom Penh", style: TextStyle(fontSize: 12),)
                  ],
                ),
              ),
              Expanded(
                child: BoxSvgButton(
                  onTap: () {},
                  svgPicture: "assets/images/filter.svg",
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody(Size size) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: TinderSwapCard(
            cardController: controller,
            maxHeight: size.height * 0.75,
            maxWidth: size.width,
            minHeight: size.height * 0.5,
            minWidth: size.width * 0.8,
            orientation: AmassOrientation.top,
            swipeUp: true,
            swipeDown: true,
            stackNum: 2,
            totalNum: itemLength,
            cardBuilder: (context, index) {
              return DiscoverCard(
                itemList: items[index], 
              );
            },
            swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
              if(index == (items.length - 1)) {
                setState(() {
                  itemLength = items.length - 1;
                });
              }
            },
          ) 
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                onTap: () {},
                bgColor: white,
                shadowColor: black.withOpacity(0.2),
                svgPicture: "assets/images/dislike.svg",
              ),
              CircleButton(
                onTap: () {},
                height: 99,
                width: 99,
                bgColor: primary,
                shadowColor: primary.withOpacity(0.3),
                svgPicture: "assets/images/like.svg",
              ),
              CircleButton(
                onTap: () {},
                bgColor: white,
                shadowColor: black.withOpacity(0.2),
                svgPicture: "assets/images/super_like.svg",
              ),
            ],
          ),
        )
      ],
    );
  }
}
