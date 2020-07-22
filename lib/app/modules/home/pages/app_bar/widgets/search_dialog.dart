import 'package:flutter/material.dart';

class SearchDialog extends StatefulWidget {
  final String search;
  const SearchDialog({Key key, this.search}) : super(key: key);
  @override
  _SearchDialogState createState() => _SearchDialogState(search);
}

class _SearchDialogState extends State<SearchDialog> {

  final _controller;

  _SearchDialogState(String search)
      : _controller = TextEditingController(text: search);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 2,
          left: 2,
          right: 2,
          child: Card(
            child: TextField(
              controller: _controller,
              textInputAction: TextInputAction.search,
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.grey[700],
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.grey[700],
                  onPressed: () {
                    _controller.clear();
                  },
                ),
              ),
              onSubmitted: (text) {
                Navigator.of(context).pop(text);
              },
            ),
          ))
      ],
    );
  }
}
