import 'package:flutter/material.dart';
import 'package:yandhi/atoms/button.dart';

class StickyTextBox extends StatelessWidget {
  final TextEditingController _controller;
  final TextInputType _keyboardType;
  final String _placeholder;
  final String _text;
  final GestureTapCallback _onTap;

  StickyTextBox({
    Key key,
    @required TextEditingController controller,
    @required TextInputType keyboardType,
    @required String placeholder,
    @required String text,
    @required GestureTapCallback onTap,
  })  : _controller = controller,
        _keyboardType = keyboardType,
        _text = text,
        _placeholder = placeholder,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: TextField(
              maxLines: null,
              controller: _controller,
              keyboardType: _keyboardType,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(width: 1.5)),
                contentPadding: EdgeInsets.all(10.0),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                hintText: _placeholder,
              ),
            ),
          ),
          Button(
            onTap: _onTap,
            text: _text,
          ),
        ],
      ),
    );
  }
}
