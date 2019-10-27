import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:fancy_bottom_bar/fancy_bottom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/globals/profile.dart';
import 'package:yandhi/pages/careinfo_page.dart';
import 'package:yandhi/pages/chat_page.dart';
import 'package:yandhi/pages/landing_page.dart';
import 'package:yandhi/pages/map_page.dart';

class CarePlanPage extends StatefulWidget {
  @override
  _CarePlanPageState createState() => _CarePlanPageState();
}

class _CarePlanPageState extends State<CarePlanPage> {
  /// Controller for [PageView] builder, the index for [PageView] is set to the center.
  static int selectedPos = 0;
  final _pageViewController = PageController(initialPage: selectedPos);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: PageView.builder(
        controller: _pageViewController,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              {
                return CareInfoPage(map: ProfileConfig.physician);
              }
              break;
            case 1:
              {
                return CareInfoPage(map: ProfileConfig.pharmacist);
              }
              break;
            case 2:
              {
                return CareInfoPage(map: ProfileConfig.dietitian);
              }
              break;
            case 3:
              {
                return CareInfoPage(map: ProfileConfig.therapist);
              }
              break;
            default:
              return null;
          }
        },
        itemCount: 4,
      ),
      bottomNavigationBar: Container(
        child: FancyBottomBar(
          height: 50,
          indicatorColor: Config.blue,
          bgColor: Config.darkBlue,
          items: [
            FancyBottomItem(
                title: Text(
                  "Physician",
                  style: TextStyle(color: Config.offWhite, fontSize: 14),
                ),
                icon: Icon(Ionicons.getIconData("ios-clipboard"),
                    color: Colors.redAccent[200])),
            FancyBottomItem(
                title: Text(
                  "Pharmacist",
                  style: TextStyle(color: Config.offWhite, fontSize: 14),
                ),
                icon: Icon(Ionicons.getIconData("ios-clipboard"),
                    color: Colors.yellowAccent[200])),
            FancyBottomItem(
                title: Text(
                  "Dietitian",
                  style: TextStyle(color: Config.offWhite, fontSize: 14),
                ),
                icon: Icon(Ionicons.getIconData("ios-clipboard"),
                    color: Colors.blueAccent[200])),
            FancyBottomItem(
                title: Text(
                  "Physical\nTherapist",
                  style: TextStyle(color: Config.offWhite, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                icon: Icon(Ionicons.getIconData("ios-clipboard"),
                    color: Colors.greenAccent[200])),
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
