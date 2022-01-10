import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/widget/set_item_detail.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/widget/sets_main_page.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class SetsPage extends StatelessWidget {
  static const id = '/sets';

  final String title;
  const SetsPage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SetsBloc, SetsState>(
      listener: (context, state) {
        switch (state.currentStatus) {
          case SetsStatus.viewSetItem:
            break;
          case SetsStatus.loadedData:
            break;
          case SetsStatus.viewSet:
            break;
          case SetsStatus.error:
            AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
            context.read<SetsBloc>().add(SetsEvent.onError());
        }
      },
      builder: (context, state) {
        switch (state.currentStatus) {
          case SetsStatus.viewSetItem:
            if (state.currentSetItemIndex != null) {
              return SetItemDetailPage(
                  productDto: state.listModifiers[state.currentSetItemIndex!],
                  title: title);
            } else {
              return loader(context);
            }
          case SetsStatus.viewSet:
            return SetsMainPage(title: title);
          default:
            return loader(context);
        }
      },
    );
  }

  Widget loader(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: RobotoTextStyle.titleTextStyle(),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            BlocProvider.of<RouterBloc>(context).add(RouterEvent.pop());
          },
          child: Icon(TotoIcons.arrow_back, size: 20, color: TotoTheme.black),
        ),
        elevation: 0,
        backgroundColor: TotoTheme.surface,
      ),
      body: Container(
        color: TotoTheme.background.base,
        child: LoaderWidget(),
      ),
    );
  }
}
