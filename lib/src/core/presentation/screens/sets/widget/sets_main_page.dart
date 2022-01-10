import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/widget/set_item_widget.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/buttom_button_radius.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

import '../bloc/bloc.dart';
import '../bloc/state.dart';

class SetsMainPage extends StatelessWidget {
  final String title;
  const SetsMainPage({required this.title, Key? key}) : super(key: key);

  static const _scrollPadding = EdgeInsets.only(
    top: 20,
    bottom: 10,
    left: 16,
    right: 16,
  );
  static const _paddingDescription = EdgeInsets.symmetric(vertical: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: RobotoTextStyle.titleTextStyle(),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            context.read<RouterBloc>().add(RouterEvent.pop());
          },
          child: Icon(TotoIcons.arrow_back, size: 20, color: TotoTheme.black),
        ),
        elevation: 0,
        backgroundColor: TotoTheme.surface,
      ),
      body: Container(
        color: TotoTheme.background.base,
        child: BlocBuilder<SetsBloc, SetsState>(
          builder: (context, state) {
            if (state.currentSet == null) {
              return LoaderWidget();
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: _scrollPadding,
                      children: [
                        FadeInImage.assetNetwork(
                          image: state.currentSet!.image,
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.6,
                          fit: BoxFit.fitWidth,
                          placeholder: placeholderPath,
                        ),
                        Container(
                          padding: _paddingDescription,
                          child: Text(
                            state.currentSet!.description ?? '',
                            style: RobotoTextStyle.s14w300(TotoTheme.text.base),
                          ),
                        ),
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.listModifiers.length,
                          itemBuilder: (context, index) {
                            return SetItemWidget(
                              productId: state.listModifiers[index],
                              index: index,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  if (state.visibleButtonAdd)
                    BottomButtonRadius(
                      title: 'Добавить',
                      onPress: () => BlocProvider.of<SetsBloc>(context)
                          .add(SetsEvent.onAddToCartButton()),
                      bgColor: TotoTheme.background.primary,
                      textColor: TotoTheme.text.baseInverted,
                      widget: Text(
                        TotoDictionary.toRubles(state.currentSet!.price ?? '0'),
                        style: RobotoTextStyle.s24w500(
                            TotoTheme.text.baseInverted),
                      ),
                    ),
                  Container(
                    color: (state.visibleButtonAdd)
                        ? TotoTheme.background.primary
                        : TotoTheme.background.base,
                    height: MediaQuery.of(context).padding.bottom,
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
