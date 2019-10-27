import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yandhi/pages/chat_page.dart';
import 'package:yandhi/pages/landing_page.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  /// Controller for [PageView] builder, the index for [PageView] is set to the center.
  final _pageViewController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
          default:
            return Scaffold();
        }
      },
      itemCount: 3,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }
}
