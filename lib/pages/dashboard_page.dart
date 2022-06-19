import 'package:dating_app_clone/pages/account_page.dart';
import 'package:dating_app_clone/pages/home_page.dart';
import 'package:dating_app_clone/pages/match_page.dart';
import 'package:dating_app_clone/pages/message_page.dart';
import 'package:dating_app_clone/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int tabIndex = 0;

  onChangeTab(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: tabIndex,
      children: [
        HomePage(),
        MatchPage(),
        MessagePage(),
        AccountPage()
      ],
    );
  }

  Widget getFooter() {
    return BottomNavigationBar(
      onTap: onChangeTab,
      currentIndex: tabIndex,
      backgroundColor: bg,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/home.svg"),
          activeIcon: SvgPicture.asset("assets/images/home_active.svg"),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/match.svg"),
          activeIcon: SvgPicture.asset("assets/images/match_active.svg"),
          label: "Match",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/chat.svg"),
          activeIcon: SvgPicture.asset("assets/images/chat_active.svg"),
          label: "Message",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/account.svg"),
          activeIcon: SvgPicture.asset("assets/images/account_active.svg"),
          label: "Account",
        ),
      ]
    );
  }
}