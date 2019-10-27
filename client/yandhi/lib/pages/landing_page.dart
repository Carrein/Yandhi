import 'package:flutter/material.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';
import 'package:yandhi/atoms/minitile.dart';
import 'package:yandhi/molecules/header.dart';

class LandingPage extends StatefulWidget {
  final PageController pageController;

  const LandingPage({Key key, this.pageController}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            // FloatingSearchBar.builder(
            //   itemCount: 100,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       leading: Text(index.toString()),
            //     );
            //   },
            //   trailing: CircleAvatar(
            //     child: Text("RD"),
            //   ),
            //   drawer: Drawer(
            //     child: Container(),
            //   ),
            //   onChanged: (String value) {},
            //   onTap: () {},
            //   decoration: InputDecoration.collapsed(
            //     hintText: "Search...",
            //   ),
            // ),
            Header(text: "Welcome\nKanye."),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
                  ),
                ),
                Expanded(
                  child: MiniTile(
                    header: "Walking",
                    icon: "ios-checkmark-circle-outline",
                    numeric: "100",
                    footer: "steps",
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
