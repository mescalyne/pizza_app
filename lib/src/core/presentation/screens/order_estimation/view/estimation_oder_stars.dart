import 'package:flutter/material.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class EstimationOrderStars extends StatefulWidget {
  int? selectedStar;
  final Function(int?) selectedStarHandler;

  EstimationOrderStars(
      {this.selectedStar, required this.selectedStarHandler});

  @override
  State<StatefulWidget> createState() => _EstimationOrderStarsState();
}

class _EstimationOrderStarsState extends State<EstimationOrderStars> {

  // Constants

  static const _width = 178.0;
  static const _height = 30.0;
  static const _starSize = 20.0;
  static const _starPadding = EdgeInsets.symmetric(horizontal: 8);
  static const _centerPadding = EdgeInsets.only(top: 14, bottom: 8);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: _centerPadding,
        child: SizedBox(
          width: _width,
          height: _height,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return estimateStar(index);
            },
            itemCount: 5,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }

  Widget estimateStar(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          if (widget.selectedStar != index) {
            widget.selectedStar = index;
            widget.selectedStarHandler(widget.selectedStar);
          }
        });
      },
      child: Container(
        padding: _starPadding,
        child: Icon(
          TotoIcons.star,
          color: colorByIndex(index),
          size: _starSize,
        ),
      ),
    );
  }

  Color colorByIndex(int index) {
    if (widget.selectedStar == null) return TotoTheme.icon.gray;
    if (widget.selectedStar! >= index) {
      return TotoTheme.icon.accent;
    } else {
      return TotoTheme.icon.gray;
    }
  }

}