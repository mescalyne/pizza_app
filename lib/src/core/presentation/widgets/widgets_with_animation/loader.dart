import 'package:flutter/cupertino.dart';

class LoaderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoaderWidgetState();
}

class LoaderWidgetState extends State<LoaderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  static const imagePath = 'assets/png/loader.png';

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (_controller.isCompleted) {
          _controller.repeat();
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 4.0).animate(_controller),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
            width: 70.0,
          ),
        ),
      ),
    );
  }
}
