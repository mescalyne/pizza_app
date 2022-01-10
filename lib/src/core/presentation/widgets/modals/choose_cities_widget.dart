import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modals/modal_container.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ChooseCitiesModal extends StatelessWidget {
  final Function onChangeCity;
  final Function onSendChangeCity;
  final List<CityDto> cities;
  final int? currentCity;
  final bool closed;
  final CitiesBloc? citiesBloc;
  final HomeBloc? homeBloc;
  final DialogBlocType dialogBlocType;
  const ChooseCitiesModal({
    Key? key,
    required this.dialogBlocType,
    required this.citiesBloc,
    required this.homeBloc,
    required this.onChangeCity,
    required this.onSendChangeCity,
    required this.cities,
    required this.currentCity,
    this.closed = false,
  }) : super(key: key);

  static double _height(context) => MediaQuery.of(context).size.height * 0.6;
  static double _width(context) => MediaQuery.of(context).size.width * 0.72;
  static const _imageSize = 20.0;
  static const _heightTitle = 37.0;
  static const _marginItem = EdgeInsets.only(
    top: 10,
    bottom: 10,
  );
  static const _marginImage = EdgeInsets.only(right: 22);
  static const _marginButton =
      EdgeInsets.only(left: 4, bottom: 4, right: 4, top: 24);
  static const _marginTitle = EdgeInsets.only(bottom: 40);
  static const _padding = EdgeInsets.only(
    left: 16,
    top: 20,
    right: 16,
    bottom: 20,
  );

  @override
  Widget build(BuildContext context) {
    return dialogBlocType == DialogBlocType.city
        ? BlocProvider<CitiesBloc>.value(
            value: citiesBloc!,
            child: BlocBuilder<CitiesBloc, CitiesState>(
              builder: (context, state) {
                return ModalContainer(
                  width: _width(context),
                  height: _height(context),
                  padding: _padding,
                  children: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: _heightTitle,
                        margin: _marginTitle,
                        child: Center(child: Image.asset(icLogo)),
                      ),
                      Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                onChangeCity(index);
                              },
                              child: Container(
                                color: Colors.transparent,
                                height: 40,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: _marginImage,
                                      width: _imageSize,
                                      child: index + 1 == int.parse(state.currentCity!.id)
                                          ? Icon(
                                              TotoIcons.checkCircle,
                                              color: TotoTheme.primaryDark,
                                              size: _imageSize,
                                            )
                                          : SizedBox(),
                                    ),
                                    Expanded(
                                      child: Text(
                                        state.cities[index].name,
                                        textAlign: TextAlign.left,
                                        style: index + 1 == int.parse(state.currentCity!.id)
                                            ? RobotoTextStyle.s16w700(
                                                TotoTheme.text.base)
                                            : RobotoTextStyle.s16w400(
                                                TotoTheme.text.base),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: state.cities.length,
                        ),
                      ),
                      Container(
                        margin: _marginButton,
                        child: RoundedButton(
                          label: TotoDictionary.chooseCitiesButton,
                          onPressed: () {
                            if (closed) {
                              Navigator.pop(context);
                            }
                            onSendChangeCity(state.currentCity);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        : BlocProvider<HomeBloc>.value(
            value: homeBloc!,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return ModalContainer(
                  width: _width(context),
                  height: _height(context),
                  padding: _padding,
                  children: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: _heightTitle,
                        margin: _marginTitle,
                        child: Center(child: Image.asset(icLogo)),
                      ),
                      Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                onChangeCity(state.cities[index]);
                              },
                              child: Container(
                                color: Colors.transparent,
                                height: 40,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: _marginImage,
                                      width: _imageSize,
                                      child: index + 1 == int.parse(state.currentCity!.id)
                                          ? Icon(
                                              TotoIcons.checkCircle,
                                              color: TotoTheme.primaryDark,
                                              size: _imageSize,
                                            )
                                          : SizedBox(),
                                    ),
                                    Expanded(
                                      child: Text(
                                        state.cities[index].name,
                                        textAlign: TextAlign.left,
                                        style: index + 1 == int.parse(state.currentCity!.id)
                                            ? RobotoTextStyle.s16w700(
                                                TotoTheme.text.base)
                                            : RobotoTextStyle.s16w400(
                                                TotoTheme.text.base),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: state.cities.length,
                        ),
                      ),
                      Container(
                        margin: _marginButton,
                        child: RoundedButton(
                          label: TotoDictionary.chooseCitiesButton,
                          onPressed: () {
                            if (closed) {
                              Navigator.pop(context);
                            }
                            onSendChangeCity();
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
  }
}

enum DialogBlocType { city, home }
