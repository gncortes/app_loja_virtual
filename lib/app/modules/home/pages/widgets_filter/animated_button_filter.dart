import 'package:flutter/material.dart';

class AnimatedButtonFilter extends StatefulWidget {
  final ScrollController scrollController;
  final VoidCallback onPressed;
  AnimatedButtonFilter({Key key, this.scrollController, this.onPressed})
      : super(key: key);
  @override
  _AnimatedButtonFilterState createState() => _AnimatedButtonFilterState();
}

class _AnimatedButtonFilterState extends State<AnimatedButtonFilter>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<EdgeInsets> _egdeAnimation;
  Animation<double> _radiusAnimation;
  ScrollController get scrollController => widget.scrollController;
  VoidCallback get onPressed => widget.onPressed;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));

    _egdeAnimation = EdgeInsetsTween(
      begin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      end: EdgeInsets.zero,
    ).animate(_controller);

    _radiusAnimation = Tween<double>(
      begin: 25,
      end: 0,
    ).animate(_controller);

    scrollController.addListener(positionedChanged);
  }

  void positionedChanged() {
    if (scrollController.offset >
        0.70 * scrollController.position.maxScrollExtent)
      _controller.forward();
    else
      _controller.reverse();
  }

  @override
  void dispose() {
    scrollController.removeListener(positionedChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            margin: _egdeAnimation.value,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius:
                  BorderRadius.circular(_radiusAnimation.value),),
              color: Colors.pink,
              elevation: 0,
              textColor: Colors.white,
              child: Text("Filtrar"),
              onPressed: () {}),),);
        });
  }
}
