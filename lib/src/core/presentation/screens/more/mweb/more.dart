import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/data_source.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/constants.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class MoreMobileWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TotoTheme.gray,
      body: BlocConsumer<MoreBloc, MoreState>(
        listener: (context, state) {
          switch (state.codeStatus) {
            case MoreCodeStatus.error:
              AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
              break;
            default:
              break;
          }
        },
        builder: (context, state) {
          switch (state.codeStatus) {
            case MoreCodeStatus.success:
              return getDataColumn(state.data, context);
            case MoreCodeStatus.loading:
              return getLoadingView();
            default:
              return getFailureView(TotoDictionary.error.dataError);
          }
        },
      ),
    );
  }

  Widget getDataColumn(List<MoreCellItem> data, BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return MoreRow(data[index]);
        },
        padding: EdgeInsets.only(
            top: 20,
            bottom: (Constants.tabBarHeight +
                MediaQuery.of(context).padding.bottom)),
      ),
    );
  }

  Widget getLoadingView() {
    return Container(
      color: TotoTheme.background.base,
      child: LoaderWidget(),
    );
  }

  Widget getFailureView(String errorText) {
    return Container(
      child: Center(
        child: Text(
          errorText,
          style: RobotoTextStyle.s24w700(TotoTheme.text.primaryDark),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MoreRow extends StatelessWidget {
  final MoreCellItem cellData;

  MoreRow(this.cellData);

  static const heightRow = 56.0;
  static const sideIndent = 16.0;
  static const rowSpace = 8.0;
  static const cellSpace = 12.0;
  static const normalCellFontSize = 14.0;
  static const imageSize = 24.0;

  static const placeholderPath = 'assets/png/ic_logo_main.png';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: rowSpace),
        child: Container(
          color: Colors.white,
          height: heightRow,
          child: configRowByType(),
        ),
      ),
      onTap: () => onTapCell(context),
    );
  }

  Widget imageByType() {
    switch (cellData.cellNameType) {
      case MoreCell.user:
        return Icon(
          TotoIcons.account,
          color: TotoTheme.accent,
        );
      case MoreCell.contacts:
        return Icon(
          TotoIcons.stay_primary_portrait,
          color: TotoTheme.accent,
        );
      default:
        return FadeInImage.assetNetwork(
          image: cellData.icon,
          fit: BoxFit.fitWidth,
          placeholder: placeholderPath,
          width: imageSize,
          height: imageSize,
        );
    }
  }

  Widget? configRowByType() {
    if (cellData.cellType == CellType.withIcons) {
      var row = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: sideIndent),
            child: imageByType(),
          ),
          SizedBox(
            width: cellSpace,
          ),
          Text(
            cellData.text.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs14Fw700(TotoTheme.text.base),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: sideIndent),
            child: RotatedBox(
              quarterTurns: 2,
              child: Icon(
                TotoIcons.arrow_back,
                color: TotoTheme.black.withOpacity(0.5),
              ),
            ),
          )
        ],
      );
      return row;
    }
    if (cellData.cellType == CellType.greenText) {
      var row = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: sideIndent),
            child: Icon(
              TotoIcons.botonus,
              color: TotoTheme.accent,
            ),
          ),
          SizedBox(
            width: cellSpace,
          ),
          Text(
            cellData.text.toUpperCase(),
            style: RobotoTextStyle.s18w700(TotoTheme.text.primaryDark),
          ),
        ],
      );
      return row;
    }
    return null;
  }

  void onTapCell(BuildContext context) {
    context.read<MoreBloc>().add(MoreEvent.cellPressed(cellData));
  }
}
