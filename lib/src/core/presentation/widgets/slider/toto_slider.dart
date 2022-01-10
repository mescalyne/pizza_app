import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as IMG;
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class SliderWidget extends StatefulWidget {
  final double sliderHeight;
  final int min;
  final int max;
  final double currentValue;
  final bool fullWidth;
  final Function(double)? onChangeSliderValue;

  SliderWidget(
      {required this.sliderHeight,
      required this.max,
      required this.min,
      required this.currentValue,
      this.onChangeSliderValue,
      this.fullWidth = false});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  ui.Image? _image;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    final ByteData data = await rootBundle.load(sliderImage);
    _image = await loadImage(Uint8List.view(data.buffer));
  }

  Future<ui.Image> loadImage(Uint8List img) async {
    final IMG.Image? image = IMG.decodeImage(img);
    final IMG.Image resized = IMG.copyResize(image!,
        width: 20, height: 20, interpolation: IMG.Interpolation.average);
    final List<int> resizedBytes = IMG.encodePng(resized);
    final resizedInt = Uint8List.fromList(resizedBytes);
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(resizedInt, (ui.Image img) {
      setState(() {});
      return completer.complete(img);
    });
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    double paddingFactor = .2;

    if (this.widget.fullWidth) paddingFactor = .3;

    return Container(
      constraints: BoxConstraints(minHeight: this.widget.sliderHeight, maxHeight: 50, minWidth: 250, maxWidth: MediaQuery.of(context).size.width * 0.68),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${this.widget.min}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: this.widget.sliderHeight * .3,
              fontWeight: FontWeight.w700,
              color: TotoTheme.lightGreenGrayText,
            ),
          ),
          Expanded(
            child: Center(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: TotoTheme.lightGreenGrayText,
                  inactiveTrackColor: TotoTheme.lightGreenGrayText,
                  trackHeight: 4.0,
                  thumbShape: CustomSliderThumbCircle(
                    thumbRadius: this.widget.sliderHeight * .4,
                    min: this.widget.min,
                    max: this.widget.max,
                    image: _image,
                  ),
                  valueIndicatorColor: TotoTheme.lightGreenGrayText,
                  activeTickMarkColor: TotoTheme.lightGreenGrayText,
                  inactiveTickMarkColor: TotoTheme.lightGreenGrayText,
                ),
                child: Slider(
                    value: widget.currentValue,
                    onChanged: (value) {
                        if (widget.onChangeSliderValue != null) {
                          widget.onChangeSliderValue!(value);
                        }
                    }),
              ),
            ),
          ),
          Text(
            '${this.widget.max}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: this.widget.sliderHeight * .3,
              fontWeight: FontWeight.w700,
              color: TotoTheme.lightGreenGrayText,
            ),
          ),
        ],
      ),
    );
  }

  int getIntValue(double value) {
    return (widget.min + (widget.max - widget.min) * value).round();
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;
  final ui.Image? image;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    required this.min,
    required this.max,
    required this.image,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  Future<void> paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) async {
    final Canvas canvas = context.canvas;

    final paint = Paint()..style = PaintingStyle.stroke;

    final resultValue = getValue(value);
    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: sliderTheme.thumbColor,
      ),
      text: resultValue,
    );

    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);

    tp.layout();

    Offset textCenter = Offset(center.dx - getTextPoints(resultValue) * 0.3,
        center.dy - tp.height - (tp.height / 2));

    Offset imageCenter = Offset(center.dx - 10, center.dy - (tp.height / 2));

    if (image != null) {
      canvas.drawImage(image!, imageCenter, paint);
    }
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }

  int getTextPoints(String text) {
    return text.length * 14;
  }
}
