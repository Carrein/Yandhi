import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:fancy_bottom_bar/fancy_bottom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/pages/chat_page.dart';
import 'package:yandhi/pages/landing_page.dart';
import 'package:yandhi/pages/map_page.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  /// Controller for [PageView] builder, the index for [PageView] is set to the center.
  static int selectedPos = 1;
  final _pageViewController = PageController(initialPage: selectedPos);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageViewController,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              {
                return ChatPage(pageController: _pageViewController);
              }
              break;
            case 1:
              {
                return LandingPage(pageController: _pageViewController);
              }
              break;
            case 2:
              {
                return MapPage();
              }
              break;
            default:
              return null;
          }
        },
        itemCount: 3,
      ),
      bottomNavigationBar: Container(
        child: FancyBottomBar(
          height: 50,
          indicatorColor: Config.blue,
          bgColor: Config.offWhite,
          items: [
            FancyBottomItem(
                title: Text("Chat"),
                icon: Icon(Ionicons.getIconData("ios-medkit"))),
            FancyBottomItem(
                title: Text("Analytics"),
                icon: Icon(Ionicons.getIconData("ios-analytics"))),
            FancyBottomItem(
                title: Text("Social"),
                icon: Icon(Ionicons.getIconData("ios-people"))),
          ],
          onItemSelected: (i) {
            print(i);
            setState(
              () {
                _pageViewController.animateToPage(i,
                    curve: Curves.easeInOut,
                    duration: Duration(milliseconds: 300));
              },
            );
            selectedPos = i;
          },
          selectedPosition: selectedPos,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }
}
