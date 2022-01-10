import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/widget/set_item_content.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class SetItemDetailPage extends StatelessWidget {
  final String title;
  final ProductDto productDto;

  const SetItemDetailPage(
      {required this.title, required this.productDto, Key? key})
      : super(key: key);

  static const _titleFontSize = 24.0;
  static const _widthArrow = 40.0;
  static const _arrowHeight = 60.0;
  static const _paddingArrow = EdgeInsets.only(top: 100, bottom: 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          titleTextStyle: RobotoTextStyle.titleTextStyle(),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              context.read<SetsBloc>().add(SetsEvent.onBackButton());
            },
            child: Icon(TotoIcons.arrow_back, size: 20, color: TotoTheme.black),
          ),
          elevation: 0,
          backgroundColor: TotoTheme.surface,
        ),
        body: Container(
          color: TotoTheme.background.base,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   width: _widthArrow,
                    //   padding: _paddingArrow,
                    //   child: InkWell(
                    //     onTap: null, //TODO: set item detail back
                    //     child: Image.asset(
                    //       arrowBackHigh,
                    //       height: _arrowHeight,
                    //     ),
                    //   ),
                    // ), //TODO: пока нет изменение товара в наборе
                    Expanded(
                      child: SetItemContent(
                        productDto: productDto,
                      ),
                    ),
                    // Container(
                    //   width: _widthArrow,
                    //   padding: _paddingArrow,
                    //   child: InkWell(
                    //     onTap: null, //TODO: set item detail forward
                    //     child: Image.asset(
                    //       arrowForwardHigh,
                    //       height: _arrowHeight,
                    //     ),
                    //   ),
                    // ), //TODO: пока нет изменение товара в наборе
                  ],
                ),
              ),
              // BottomButtonRadius(
              //   title: 'Уже в Томбо',
              //   onPress: () {}, //TODO: кнопка добавить в Томбо
              //   // Уже в Томбо
              //   bgColor: TotoTheme.background.base,
              //   textColor: TotoTheme.text.primary,
              //   // Добавить в Томбо
              //   //bgColor: TotoTheme.background.primary,
              //   //textColor: TotoTheme.text.baseInverted,
              // ),
              // Container(
              //   color: TotoTheme.background.base,
              //   height: MediaQuery.of(context).padding.bottom,
              // ), //TODO: пока нет изменение товара в наборе
            ],
          ),
        ));
  }
}
