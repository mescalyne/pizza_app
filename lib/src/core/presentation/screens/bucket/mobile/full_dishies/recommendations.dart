import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class Recommendations extends StatelessWidget {
  final List<ProductDto> listRecommend;

  const Recommendations({required this.listRecommend, Key? key})
      : super(key: key);

  static const paddingContent =
      EdgeInsets.only(left: 18.0, top: 20, bottom: 18);
  static const paddingList = EdgeInsets.only(right: 16, left: 16);
  static const heightList = 174.0;

  @override
  Widget build(BuildContext context) {
    return listRecommend.isEmpty
        ? Container()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: paddingContent,
                child: Text(
                  TotoDictionary.fullBucketRecommend,
                  style: RobotoTextStyle.s24w700(null),
                ),
              ),
              Container(
                padding: paddingList,
                height: heightList,
                child: RecommendationsList(
                  listRecommend: listRecommend,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  TotoDictionary.fullBucketDots,
                  style: RobotoTextStyle.s20w400(TotoTheme.text.base),
                ),
              ),
            ],
          );
  }
}

class RecommendationsList extends StatelessWidget {
  final List<ProductDto> listRecommend;

  RecommendationsList({required this.listRecommend, Key? key})
      : super(key: key);

  static const listItemExtent = 171.0;
  static const listPadding =
      EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 7.0);
  static const listBorderRadius = 15.0;
  static const listInternalPadding =
      EdgeInsets.only(top: 8.0, right: 22.5, left: 22.5, bottom: 8.0);
  static const nameHeight = 32.0;
  static const spaceBoxHeight = 8.0;

  @override
  Widget build(BuildContext context) {
    var bucketBloc = BlocProvider.of<BucketBloc>(context);
    return ListView.builder(
        itemCount: listRecommend.length,
        itemExtent: listItemExtent,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: listPadding,
            child: InkWell(
              onTap: () =>
                  bucketBloc.add(AddRecommendEvent(listRecommend[index].id, 1)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(listBorderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: listInternalPadding,
                      child: FadeInImage.assetNetwork(
                        image: listRecommend[index].image,
                        fit: BoxFit.fitWidth,
                        placeholder: placeholderPath,
                      ),
                    ),
                    Container(
                        height: nameHeight,
                        child: Text(
                          '${listRecommend[index].name}',
                          textAlign: TextAlign.center,
                          style: RobotoTextStyle.s14w400(null),
                        )),
                    SizedBox(
                      height: spaceBoxHeight,
                    ),
                    Text(
                      '${TotoDictionary.toRubles(listRecommend[index].price.toString())}',
                      style: RobotoTextStyle.s18w700(null),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
