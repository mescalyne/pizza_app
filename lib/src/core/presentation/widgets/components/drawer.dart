import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ToToDrawer extends StatefulWidget {
  final List<CityDto> cities;

  const ToToDrawer({Key? key, required this.cities}) : super(key: key);

  @override
  _ToToDrawerState createState() => _ToToDrawerState();
}

class _ToToDrawerState extends State<ToToDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image.asset(icLogo),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 60),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      BlocProvider.of<HomeBloc>(context)
                          .add(OnCityPressed(state.cities[index]));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: index == int.parse(state.currentCity!.id) + 1
                          ? Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 24),
                                  child: Icon(
                                    TotoIcons.checkCircle,
                                    color: TotoTheme.primary,
                                  ),
                                ),
                                Text(
                                  state.cities[index].name,
                                  style: RobotoTextStyle.s20w700(
                                      TotoTheme.text.base),
                                )
                              ],
                            )
                          : Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                state.cities[index].name,
                                style: RobotoTextStyle.s20w400(
                                    TotoTheme.text.base),
                              ),
                            ),
                    ),
                  );
                },
                itemCount: state.cities.length,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: Text(
                TotoDictionary.cityChangeAlert,
                textAlign: TextAlign.center,
                style: RobotoTextStyle.s14w400(Colors.grey),
              ),
            )
          ],
        );
      },
    ));
  }
}
