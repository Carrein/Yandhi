import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:yandhi/atoms/chart.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';
import 'package:yandhi/atoms/tile.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/helper/chat_helper.dart';
import 'package:yandhi/molecules/header.dart';
import 'package:yandhi/atoms/chart.dart';
import 'package:yandhi/atoms/sticky_textbox.dart';

class ChatPage extends StatefulWidget {
  final PageController pageController;

  const ChatPage({Key key, this.pageController}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Bubble> bubbleList = [];

  final TextEditingController _stickyTextBoxController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[],
              ),
            ),
            StickyTextBox(
              controller: _stickyTextBoxController,
              keyboardType: TextInputType.text,
              placeholder: "Talk.",
              text: "Submit",
              onTap: () => this.updateBubbleList(_stickyTextBoxController.text),
            ),
          ],
        ),
      ),
    );
  }

  void updateBubbleList(String args) async {
    setState(() {
      bubbleList.add(Bubble(
          margin: BubbleEdges.only(top: 10),
          nip: BubbleNip.leftBottom,
          child: Text(args)));
    });
    await ChatHelper.chatPost(args).then((response) {
      setState(() {
        bubbleList.add(Bubble(
            margin: BubbleEdges.only(top: 10),
            nip: BubbleNip.leftBottom,
            child: Text(response)));
      });
    });
  }

  @override
  void dispose() {
    _stickyTextBoxController.dispose();
    super.dispose();
  }
}
