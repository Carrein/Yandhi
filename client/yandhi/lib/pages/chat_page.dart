import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/helper/chat_helper.dart';
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
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: bubbleList.length,
                itemBuilder: (context, i) {
                  if (bubbleList.length <= 0) {
                    return null;
                  } else {
                    return bubbleList[i];
                  }
                },
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
          radius: Radius.circular(4),
          margin: BubbleEdges.only(bottom: 15),
          nip: BubbleNip.rightBottom,
          nipRadius: 0,
          color: Config.lightBlue,
          child: Text(args)));
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    });
    await ChatHelper.chatPost(args).then((response) {
      setState(() {
        bubbleList.add(Bubble(
            radius: Radius.circular(4),
            margin: BubbleEdges.only(bottom: 15),
            nip: BubbleNip.leftBottom,
            nipRadius: 0,
            color: Config.offWhite,
            child: Text(response)));
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      });
    });
  }

  @override
  void dispose() {
    _stickyTextBoxController.dispose();
    super.dispose();
  }
}
