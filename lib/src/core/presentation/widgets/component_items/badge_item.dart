import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class BadgeItem extends StatelessWidget {
  final double height;
  final double width;
  final double heightCut;
  final Color color = TotoTheme.primary;
  final double heightBorder;
  final colorBorder = TotoTheme.primaryDark;
  final Widget child;

  BadgeItem({
    this.height = 20,
    this.width = 20,
    this.heightCut = 4,
    this.heightBorder = 1,
    required this.child,
  });

  static const _paddingCount = EdgeInsets.only(top: 1);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipperStack(height: height, width: width, heightCut: heightCut),
      child: Container(
        height: height,
        width: width,
        color: colorBorder,
        child: ClipPath(
          clipper: ClipperStack(
              height: height - heightBorder,
              width: width,
              heightCut: heightCut),
          child: Container(
            height: height - heightBorder,
            width: width,
            color: color,
            alignment: Alignment.topCenter,
            padding: _paddingCount,
            child: child,
          ),
        ),
      ),
    );
  }
}

class ClipperStack extends CustomClipper<Path> {
  final double height;
  final double width;
  final double heightCut;

  ClipperStack({
    required this.height,
    required this.width,
    required this.heightCut,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, height);

    path.lineTo(width / 2, height - heightCut);
    path.lineTo(width, height);

    path.lineTo(width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
