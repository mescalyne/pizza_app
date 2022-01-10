import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/cell_items.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/page_indicator.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

const _rowSpace = 8.0;
const _sidePaginationSize = EdgeInsets.only(left: 16, right: 16);
const _botPaginationSize = EdgeInsets.only(bottom: 20);
const _textCellPadding = EdgeInsets.only(left: 16, right: 16, top: 8);
const _urlCellPadding = EdgeInsets.only(left: 16, right: 20, top: 8);
const _roundImageCellPadding =
    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);
const _pageViewPadding = EdgeInsets.all(8.0);
const _activeButtonBottomPadding = EdgeInsets.only(bottom: 30);
const _imageCellHeight = 200.0;
const _roundImageCellHeight = 100.0;
const _columnTopSpace = 20.0;
const _urlCellHeight = 56.0;
const _urlCellIconSize = 16.0;

class MoreDetailMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoreDetailBloc, MoreDetailState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: createActiveButton(context, state.buttonName),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: AppBar(
            backgroundColor: TotoTheme.bg,
            foregroundColor: TotoTheme.text.base,
            titleTextStyle: RobotoTextStyle.titleTextStyle(),
            title: Text(state.screenName),
          ),
          backgroundColor: TotoTheme.gray,
          body: BlocConsumer<MoreDetailBloc, MoreDetailState>(
            listener: (context, state) {
              switch (state.status) {
                case DataStatus.error:
                  AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
                  context
                      .read<MoreDetailBloc>()
                      .add(MoreDetailEvent.errorLoading());
                  break;
                default:
                  if (state.urlOpenResult == false) {
                    AppSnackBar.showSnackBar(
                        TotoDictionary.error.urlOpenError, context);
                  }
              }
            },
            builder: (context, state) {
              if (state.status == DataStatus.success) {
                if (state.data.isNotEmpty) {
                  return getDataColumn(state.data);
                } else {
                  return getFailureView(TotoDictionary.error.dataError);
                }
              } else if (state.status == DataStatus.loading) {
                return getLoadingView();
              } else {
                return getFailureView(TotoDictionary.error.dataError);
              }
            },
          ),
        );
      },
    );
  }

  Widget getDataColumn(List<ListItem> data) {
    var topHeight =
        (data[0].cellType == CellType.imageView) ? 0.0 : _columnTopSpace;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.only(top: topHeight, bottom: 90),
              itemCount: data.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return MoreDetailRow(data[index]);
              }),
        ),
      ],
    );
  }

  Widget getLoadingView() {
    return LoaderWidget();
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

  void onActiveButtonTap(BuildContext context) {
    context.read<MoreDetailBloc>().add(MoreDetailEvent.buttonPressed());
  }

  Widget? createActiveButton(context, String? name) {
    if (name != null) {
      return Padding(
        padding: _activeButtonBottomPadding,
        child: RoundedButton(
          label: name,
          onPressed: () => onActiveButtonTap(context),
          hasArrow: true,
        ),
      );
    } else {
      return null;
    }
  }
}

class MoreDetailRow extends StatefulWidget {
  final ListItem cellData;

  MoreDetailRow(this.cellData);

  @override
  State<MoreDetailRow> createState() => _MoreDetailRowState();
}

class _MoreDetailRowState extends State<MoreDetailRow>
    with TickerProviderStateMixin {
  late int pageCurrentIndex;

  @override
  void initState() {
    pageCurrentIndex = 0;
    return super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: _rowSpace),
        child: configRowByType(),
      ),
      onTap: () => onTapCell(context),
    );
  }

  Widget? configRowByType() {
    switch (widget.cellData.cellType) {
      case CellType.expanded:
        return expandedCell(widget.cellData as MoreExpandedCellItem);
      case CellType.imageView:
        return imageCell(widget.cellData as MoreImageCellItem);
      case CellType.formatText:
        return textCell(widget.cellData as MoreTextCellItem);
      case CellType.pageView:
        return pageImageCell(widget.cellData as MorePageCellItem);
      case CellType.roundImageView:
        return roundImageCell(widget.cellData as MoreImageCellItem);
      case CellType.urlWithName:
        return urlWithNameCell(widget.cellData as MoreURLCellItem);
      case CellType.email:
        return emailTextCell(widget.cellData as MoreTextCellItem);
      default:
        return null;
    }
  }

  // MARK: - Cell Fabric

  Widget expandedCell(MoreExpandedCellItem item) {
    return Container(
      color: TotoTheme.bg,
      child: Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: Padding(
            padding: _sidePaginationSize,
            child: ExpansionTile(
              expandedAlignment: Alignment.centerLeft,
              tilePadding: EdgeInsets.zero,
              childrenPadding: _botPaginationSize,
              key: PageStorageKey(item.header),
              title: Text(
                item.header.toUpperCase(),
                style: RobotoTextStyle.s18w700(TotoTheme.text.base),
              ),
              children: [
                Text(item.text,
                    style: RobotoTextStyle.s16w300(TotoTheme.text.base))
              ],
            ),
          )),
    );
  }

  Widget imageCell(MoreImageCellItem item) {
    return FadeInImage.assetNetwork(
      image: item.imagePath,
      fit: BoxFit.fitWidth,
      placeholder: placeholderPath,
      height: _imageCellHeight,
    );
  }

  Widget roundImageCell(MoreImageCellItem item) {
    return roundImageWithData(
        item.imagePath, _roundImageCellHeight, _roundImageCellPadding);
  }

  Widget textCell(MoreTextCellItem item) {
    return Padding(
      padding: _textCellPadding,
      child: Text(
        item.text,
        style: RobotoTextStyle.s16w400(TotoTheme.text.base),
      ),
    );
  }

  Widget emailTextCell(MoreTextCellItem item) {
    return Text(item.text.toLowerCase(),
        style: RobotoTextStyle.smallCapsFs14Fw700UnderLine(TotoTheme.text.base),
        textAlign: TextAlign.center);
  }

  Widget? pageImageCell(MorePageCellItem item) {
    return Column(
      children: [
        Container(
          height: _imageCellHeight,
          child: PageView.builder(
              itemBuilder: (context, index) {
                return roundImageWithData(
                    item.imagesPaths[index], null, _pageViewPadding);
              },
              itemCount: item.imagesPaths.length,
              controller: PageController(
                initialPage: 0,
                viewportFraction: 0.9,
              ),
              onPageChanged: changeCurrentIndex),
        ),
        PageIndicator(item.imagesPaths.length, pageCurrentIndex),
      ],
    );
  }

  Widget urlWithNameCell(MoreURLCellItem item) {
    return Container(
      height: _urlCellHeight,
      color: TotoTheme.surface,
      child: Padding(
        padding: _urlCellPadding,
        child: Row(
          children: [
            Text(
              item.text,
              style: RobotoTextStyle.s18w700(TotoTheme.text.base),
            ),
            Spacer(),
            Icon(
              TotoIcons.arrow_forward,
              color: TotoTheme.icon.gray,
              size: _urlCellIconSize,
            ),
          ],
        ),
      ),
    );
  }

  Widget roundImageWithData(
      String imagePath, double? height, EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: FadeInImage.assetNetwork(
          height: height,
          image: imagePath,
          fit: BoxFit.fitWidth,
          placeholder: placeholderPath,
        ),
      ),
    );
  }

  void changeCurrentIndex(int page) {
    setState(() {
      pageCurrentIndex = page;
    });
  }

  void onTapCell(BuildContext context) {
    context
        .read<MoreDetailBloc>()
        .add(MoreDetailEvent.cellPressed(widget.cellData));
  }
}
