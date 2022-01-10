import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modals/choose_place_modal.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

final List<String> imgList = [lentaImageExample];

class MenuNestedHeader extends StatefulWidget {
  const MenuNestedHeader({Key? key, required this.address}) : super(key: key);

  final String address;

  @override
  _MenuNestedHeaderState createState() => _MenuNestedHeaderState();
}

class _MenuNestedHeaderState extends State<MenuNestedHeader> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  GlobalKey btnKey = GlobalKey();
  String place = '';

  final List<Widget> imageSliders = imgList
      .map(
        (item) => ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          child: Container(
            child: Image.asset(
              item,
              scale: 3,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 111,
              width: 311,
            ),
          ),
        ),
      )
      .toList();

  void changePlace(Place newPlace) {
    BlocProvider.of<MenuBloc>(context).add(
      ChangePlace(newPlace),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: TextButton(
            style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(width: 1, color: TotoTheme.primary),
                ),
                shape:
                    MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
                  (states) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    );
                  },
                ),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => ChoosePlaceModal(
                  changePlace: changePlace,
                  close: true,
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Icon(
                        TotoIcons.motorcycle,
                        color: TotoTheme.primary,
                      ),
                    ),
                    BlocBuilder<MenuBloc, MenuState>(
                      builder: (context, state) {
                        switch (state.place) {
                          case Place.delivery:
                            place = TotoDictionary.deliveryPlace;
                            break;

                          default:
                            place = TotoDictionary.pickupPlace;
                            break;
                        }
                        return Text(
                          place,
                          style: RobotoTextStyle.s20w400(Colors.grey),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    TotoIcons.unfold_more,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: TextButton(
            onPressed: () {
              switch (place) {
                case TotoDictionary.deliveryPlace:
                  context.read<RouterBloc>().add(RouterEvent.toDelivery(
                      ChooseDeliveryAddressScenario.pop));

                  break;
                case TotoDictionary.pickupPlace:
                  context.read<RouterBloc>().add(RouterEvent.toPickUp());
                  break;
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  child: Icon(
                    TotoIcons.location,
                    color: TotoTheme.primary,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      widget.address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          RobotoTextStyle.smallCapsFs18Fw700(TotoTheme.primary),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    TotoIcons.mode,
                    color: TotoTheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 3.0,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _current = index;
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: imgList.asMap().entries.map(
            (entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: 3.0,
                  height: 3.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
