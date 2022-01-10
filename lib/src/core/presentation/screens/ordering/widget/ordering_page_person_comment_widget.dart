import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/content_page.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/regex.dart';
import 'package:toto_mobile/src/resources/resources.dart';

import '../ordering.dart';

class OrderingPagePersonCommentWidget extends StatelessWidget {
  static const _padding =
      EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      margin: orderingPageMarginItem,
      width: MediaQuery.of(context).size.width,
      color: TotoTheme.background.base,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TotoDictionary.deliveryCountPersons.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs14Fw500(TotoTheme.text.base),
            textAlign: TextAlign.left,
          ),
          _personCountWidget(),
          Text(
            TotoDictionary.deliveryCommentAlt.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs14Fw500(TotoTheme.text.base),
            textAlign: TextAlign.left,
          ),
          _commentWidget(context),
        ],
      ),
    );
  }

  Widget _personCountWidget() {
    const _margin = EdgeInsets.only(top: 16, bottom: 20);
    const _iconSize = 20.0;
    const _iconPadding = EdgeInsets.all(6);
    const _widthButtonsContainer = 95.0;
    const _paddingButtonsContainer = EdgeInsets.only(right: 10);

    return BlocBuilder<OrderingBloc, OrderingState>(
      builder: (context, state) {
        return Container(
          margin: _margin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: _widthButtonsContainer,
                padding: _paddingButtonsContainer,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        if (state.personCount > 1) {
                          context.read<OrderingBloc>().add(
                              OrderingEvent.onChangePersonCount(
                                  state.personCount - 1));
                        } else
                          null;
                      },
                      child: Container(
                        padding: _iconPadding,
                        child: Icon(
                          TotoIcons.remove_circle_outline,
                          size: _iconSize,
                          color: (state.personCount > 1)
                              ? TotoTheme.accent
                              : TotoTheme.accent.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Text(
                      '${state.personCount}',
                      style: RobotoTextStyle.s18w500(TotoTheme.text.base),
                    ),
                    InkWell(
                      onTap: () {
                        if (state.personCount < 10) {
                          context.read<OrderingBloc>().add(
                              OrderingEvent.onChangePersonCount(
                                  state.personCount + 1));
                        } else
                          null;
                      },
                      child: Container(
                        padding: _iconPadding,
                        child: Icon(
                          TotoIcons.add_circle_outline,
                          size: _iconSize,
                          color: (state.personCount < 10)
                              ? TotoTheme.accent
                              : TotoTheme.accent.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  TotoDictionary.deliveryCountPersonsComment,
                  style: RobotoTextStyle.s13w300(TotoTheme.lightGreenGrayText),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _commentWidget(BuildContext context) {
    const _textFieldFontSize = 13.0;
    const _textFieldPadding = EdgeInsets.only(left: 20, right: 20, bottom: 5);
    const _textFieldMargin = EdgeInsets.only(top: 20);
    const _textFieldHeight = 114.0;

    const _textFieldMaxLength = 500;
    const _textFieldMaxLines = 10;
    const _textFieldMinLines = 5;

    return Container(
      margin: _textFieldMargin,
      padding: _textFieldPadding,
      height: _textFieldHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(
          color: TotoTheme.input.border,
        ),
      ),
      child: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(TotoRegex.orderTextField))
        ],
        maxLength: _textFieldMaxLength,
        maxLines: _textFieldMaxLines,
        minLines: _textFieldMinLines,
        controller: commentControllerField,
        style: TextStyle(fontSize: _textFieldFontSize),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: TotoDictionary.deliveryComment,
        ),
      ),
    );
  }
}
