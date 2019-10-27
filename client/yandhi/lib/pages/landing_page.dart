import 'package:dropdownfield/dropdownfield.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';
import 'package:yandhi/atoms/ProfileTile.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/globals/profile.dart';

import 'package:yandhi/molecules/header.dart';
import 'package:yandhi/pages/careplan_page.dart';

import 'info_page.dart';

class LandingPage extends StatefulWidget {
  final PageController pageController;

  const LandingPage({Key key, this.pageController}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var index = 0;

  List<List<String>> profileConfig = [
    ProfileConfig.kanye,
    ProfileConfig.maya,
    ProfileConfig.clarrisa,
  ];

  switchUsers() {
    setState(() {
      index++;
      print(index);
      if (index > 2) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                    flex: 3,
                    child: Header(
                        text: "Welcome\n" + profileConfig[index][9] + ".")),
                Flexible(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 60),
                      child: FloatingSearchBar.builder(
                        itemCount: 100,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Text(index.toString()),
                          );
                        },
                        trailing: CircleAvatar(
                          child: Text(profileConfig[index][0]),
                        ),
                        onChanged: (String value) {},
                        onTap: () {
                          print("okay");
                        },
                        decoration: InputDecoration.collapsed(
                          hintText: "Search...",
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: FloatingActionButton(
                    elevation: 0,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    onPressed: () => switchUsers(),
                    splashColor: Colors.amber[800],
                    child: Icon(
                      Ionicons.getIconData("md-body"),
                      size: 20,
                      color: Config.darkBlue,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ProfileTile(
                    border: true,
                    header: "CarePlan",
                    icon: "ios-today",
                    numeric: profileConfig[index][1],
                    footer: "deductible",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: CarePlanPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "Glycemic Index",
                    icon: "ios-thermometer",
                    numeric: profileConfig[index][2],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "BP",
                    icon: "ios-pulse",
                    numeric: profileConfig[index][3],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "Steps",
                    icon: "ios-walk",
                    numeric: profileConfig[index][4],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "LDL",
                    icon: "ios-heart",
                    numeric: profileConfig[index][5],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "Weight",
                    icon: "ios-timer",
                    numeric: profileConfig[index][6],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "HbA1c",
                    icon: "ios-water",
                    numeric: profileConfig[index][7],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
                Expanded(
                  child: ProfileTile(
                    border: false,
                    header: "HDL",
                    icon: "ios-heart-half",
                    numeric: profileConfig[index][8],
                    footer: "steps",
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rippleRightUp,
                          child: InfoPage(),
                          duration: Duration(milliseconds: 300)));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
