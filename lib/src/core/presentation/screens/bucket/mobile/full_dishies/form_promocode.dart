import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class FormPromocode extends StatelessWidget {
  final String? coupon;
  final bool isIncorrectCoupon;
  late final bool isAcceptPromo;

  FormPromocode({
    this.coupon,
    required this.isIncorrectCoupon,
    Key? key,
  }) : super(key: key) {
    (coupon == null || coupon == '')
        ? isAcceptPromo = false
        : isAcceptPromo = true;
  }

  static const paddingForChechIcon = EdgeInsets.only(left: 10, right: 10.0);
  static const paddingForContent =
      EdgeInsets.only(top: 10, left: 16, right: 10, bottom: 20);
  static const paddingForInput = EdgeInsets.only(left: 17, bottom: 6);
  static const flexForFirstContent = 65;
  static const flexForSecondContent = 35;
  static const heightForInput = 40.0;
  static const radiusForInput = 25.0;
  static const spaceBoxWidth = 8.0;
  static const incorrectPadding = EdgeInsets.only(top: 10, left: 10);

  @override
  Widget build(BuildContext context) {
    var bucketBloc = BlocProvider.of<BucketBloc>(context);
    var _promoController = TextEditingController();

    return Container(
      padding: paddingForContent,
      child: Column(
        children: [
          Form(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: flexForFirstContent,
                    child: Container(
                      width: double.infinity,
                      height: heightForInput,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radiusForInput),
                        border: Border.all(color: TotoTheme.primary),
                      ),
                      child: isAcceptPromo
                          ? Row(
                              children: [
                                Padding(
                                  padding: paddingForChechIcon,
                                  child: Icon(
                                    TotoIcons.checkCircle,
                                    color: TotoTheme.primary,
                                  ),
                                ),
                                Text(
                                  '$coupon',
                                  style: RobotoTextStyle.s13w400(
                                      TotoTheme.text.base),
                                ),
                              ],
                            )
                          : TextFormField(
                              controller: _promoController,
                              autofocus: false,
                              decoration: InputDecoration(
                                  contentPadding: paddingForInput,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: TotoDictionary.fullBucketInputPromo,
                                  hintStyle: RobotoTextStyle.s14w400(
                                      TotoTheme.darkGrayText)),
                            ),
                    ),
                  ),
                  SizedBox(
                    width: spaceBoxWidth,
                  ),
                  Flexible(
                    flex: flexForSecondContent,
                    child: InkWell(
                      onTap: () {
                        if (!isAcceptPromo) {
                          if (_promoController.text.isNotEmpty) {
                            bucketBloc
                                .add(AcceptPromoEvent(_promoController.text));
                            FocusScope.of(context).unfocus();
                          }
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: heightForInput,
                        decoration: BoxDecoration(
                          color: isAcceptPromo
                              ? TotoTheme.primaryLight
                              : TotoTheme.background.primary,
                          borderRadius: BorderRadius.circular(radiusForInput),
                          border: Border.all(color: TotoTheme.primary),
                        ),
                        child: Text(
                          TotoDictionary.fullBucketAcceptPromo,
                          textAlign: TextAlign.center,
                          style: RobotoTextStyle.s16w400(TotoTheme.surface),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          isIncorrectCoupon
              ? Container(
                  padding: incorrectPadding,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    TotoDictionary.fullBucketIncorrectPromo,
                    style: RobotoTextStyle.s13w400(TotoTheme.accent),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
