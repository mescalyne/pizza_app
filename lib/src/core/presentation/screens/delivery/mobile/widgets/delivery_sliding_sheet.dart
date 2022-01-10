import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../../../extensions/TextStyle.dart';
import '../../../../../../resources/resources.dart';
import '../../../../../../resources/svg.dart';
import '../../../../../domain/entities/address.dart';
import '../../../../../domain/entities/delivery_address.dart';
import '../../../../router/bloc/bloc.dart';
import '../../../../router/bloc/event.dart';
import '../../../../widgets/components/delivery_addresses_form.dart';
import '../../../home/bloc/state.dart';
import '../../bloc/bloc.dart';
import '../../bloc/event.dart';
import '../../bloc/state.dart';
import 'address_input_from.dart';
import 'delivery_address_not_found.dart';
import 'delivery_edit.dart';
import 'delivery_find.dart';
import 'delivery_info.dart';

class DeliverySlidingSheet extends StatefulWidget {
  DeliverySlidingSheet({
    Key? key,
    required this.body,
    required this.showMyLocation,
    required this.scenario,
    required this.entranceTextEditingController,
    required this.floorTextEditingController,
    required this.apartmentTextEditingController,
    required this.commentTextEditingController,
  }) : super(key: key);

  final ChooseDeliveryAddressScenario scenario;
  final Widget body;

  final TextEditingController entranceTextEditingController;
  final TextEditingController floorTextEditingController;
  final TextEditingController apartmentTextEditingController;
  final TextEditingController commentTextEditingController;
  final Function showMyLocation;
  @override
  State<DeliverySlidingSheet> createState() => _DeliverySlidingSheetState();
}

const _infoSnap = 276.0;
const _findSnap = 635.0;
const _editSnap = 489.0;
const _usedAddressesSnap = 606.0;

final _selectorIconButtonContainerShadowsOffset =
    Offset.fromDirection(0.0, 0.0);
const _selectorIconButtonContainerShadowsBlurRadius = 8.0;

const _durationAnimationScrollTo = Duration(milliseconds: 500);

const _heightHeader = 60.0;

class _DeliverySlidingSheetState extends State<DeliverySlidingSheet> {
  final TextEditingController deliveryAddressTextEditingController =
      TextEditingController();
  final FocusNode focusTextEditingDeliveryAddress = FocusNode();

  List<double> snappingInfo = const [_infoSnap, _findSnap];
  List<double> snappingEdit = const [
    _infoSnap,
    _editSnap,
    _findSnap - 10,
    _findSnap
  ];
  List<double> snappingFind = const [_infoSnap, _findSnap];
  List<double> snappingUsed = const [_infoSnap, _usedAddressesSnap];

  final SheetController sheetController = SheetController();

  @override
  Widget build(BuildContext contextMain) {
    void _onInputFormTapped() async {
      await sheetController.snapToExtent(
        _findSnap,
        duration: _durationAnimationScrollTo,
      );
      BlocProvider.of<DeliveryBloc>(contextMain).add(
        ChangeSlidingPanelStatus(SlidingPanelStatus.find),
      );
      FocusScope.of(context).requestFocus(focusTextEditingDeliveryAddress);
    }

    void _onTapToInputInEdit() async {
      await sheetController.snapToExtent(
        _findSnap - 10,
        duration: _durationAnimationScrollTo,
      );
    }

    void _onResumseButtonPressed() async {
      await sheetController.snapToExtent(
        _editSnap,
        duration: _durationAnimationScrollTo,
      );
      BlocProvider.of<DeliveryBloc>(contextMain).add(
        ChangeSlidingPanelStatus(SlidingPanelStatus.edit),
      );
    }

    void _snapTo576() async => await sheetController.snapToExtent(
          _usedAddressesSnap,
          duration: _durationAnimationScrollTo,
        );

    void _onAddDeliveryAddressPressed() async {
      await sheetController.snapToExtent(
        _infoSnap,
        duration: _durationAnimationScrollTo,
      );
      BlocProvider.of<DeliveryBloc>(contextMain)
          .add(DeliveryEvent.changeSLidingPanelStatus(SlidingPanelStatus.info));
    }

    void _onFoundByQueryAddressTapped(SuggestItem address) async {
      await sheetController.snapToExtent(
        _infoSnap,
        duration: _durationAnimationScrollTo,
      );
      BlocProvider.of<DeliveryBloc>(contextMain).add(
        OnFoundByQueryAddressTapped(
          address,
        ),
      );
      deliveryAddressTextEditingController.text = address.searchText;
    }

    void _pop() =>
        BlocProvider.of<RouterBloc>(contextMain).add(RouterEvent.pop());
    void _toHome() {
      BlocProvider.of<RouterBloc>(contextMain)
          .add(RouterEvent.toHome(MainScreen.menu));
    }

    void _chooseUsedDeliveryAddress(
      List<AddressDto> deliveryAddresses,
      int checkedDeliveryAddress,
    ) {
      final latitude = deliveryAddresses[checkedDeliveryAddress].latitude;
      final longitude = deliveryAddresses[checkedDeliveryAddress].longitude;
      final home = deliveryAddresses[checkedDeliveryAddress].home;
      final street = deliveryAddresses[checkedDeliveryAddress].street;
      final city = deliveryAddresses[checkedDeliveryAddress].cityName;

      final address = DeliveryDto(
        latitude: latitude!,
        longitude: longitude!,
        cityName: city!,
        street: street,
        home: home!,
      );

      switch (widget.scenario) {
        case ChooseDeliveryAddressScenario.pop:
          BlocProvider.of<DeliveryBloc>(contextMain).add(
            OnUsedDeliveryAddressChooseButtonPressed(address, _pop),
          );
          break;
        case ChooseDeliveryAddressScenario.navigateToHomeMenu:
          BlocProvider.of<DeliveryBloc>(contextMain).add(
            OnUsedDeliveryAddressChooseButtonPressed(address, _toHome),
          );
          break;
      }
    }

    void _unFocus() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }

    void _onCreateNewDeliveryAddressPressed(DeliveryDto address) {
      switch (widget.scenario) {
        case ChooseDeliveryAddressScenario.pop:
          BlocProvider.of<DeliveryBloc>(contextMain).add(
            OnAddNewDeliveryAddressButtonPressed(address, _pop),
          );
          break;
        case ChooseDeliveryAddressScenario.navigateToHomeMenu:
          BlocProvider.of<DeliveryBloc>(contextMain).add(
            OnAddNewDeliveryAddressButtonPressed(address, _toHome),
          );
          break;
      }
    }

    void _onChooseAnotherDeliveryButton() async {
      await sheetController.snapToExtent(
        _infoSnap,
        duration: _durationAnimationScrollTo,
      );
      BlocProvider.of<DeliveryBloc>(contextMain).add(
        ChangeSlidingPanelStatus(
          SlidingPanelStatus.info,
        ),
      );
    }

    return BlocConsumer<DeliveryBloc, DeliveryState>(
      listener: (context, state) {
        if (state.deliveryAddressState == DeliveryAddressStatus.updated) {
          if (deliveryAddressTextEditingController.text == '') {
            if (state.currentUserAddress != null) {
              deliveryAddressTextEditingController.text =
                  '${state.currentUserAddress!.cityName}, ${state.currentUserAddress!.street} ${state.currentUserAddress!.home}';
            }
          }
        }
        switch (state.status) {
          case SlidingPanelStatus.info:
            sheetController.snapToExtent(
              _infoSnap,
              duration: _durationAnimationScrollTo,
            );
            break;
          case SlidingPanelStatus.find:
            sheetController.snapToExtent(
              _findSnap,
              duration: _durationAnimationScrollTo,
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return SlidingSheet(
          color: Colors.transparent,
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(contextMain).viewInsets.bottom),
          listener: (stateSnap) {
            if (stateSnap.extent >= _findSnap) {
              BlocProvider.of<DeliveryBloc>(context).add(
                ChangeSlidingPanelStatus(
                  SlidingPanelStatus.find,
                ),
              );
            }
            if (stateSnap.extent <= _editSnap) {
              _unFocus();
            }
            if (state.status != SlidingPanelStatus.info &&
                stateSnap.extent <= _infoSnap) {
              BlocProvider.of<DeliveryBloc>(context).add(
                ChangeSlidingPanelStatus(
                  SlidingPanelStatus.info,
                ),
              );
            }
          },
          headerBuilder: (context, stateBuild) => Container(
            height: _heightHeader,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: state.status != SlidingPanelStatus.find
                          ? TotoTheme.surface
                          : TotoTheme.surface.withOpacity(0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: [
                        if (state.status != SlidingPanelStatus.find)
                          BoxShadow(
                            color: TotoTheme.black.withOpacity(0.26),
                            blurRadius:
                                _selectorIconButtonContainerShadowsBlurRadius,
                            offset: _selectorIconButtonContainerShadowsOffset,
                          )
                      ]),
                  margin: EdgeInsets.only(right: 21),
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: Icon(Icons.near_me),
                    color: state.status != SlidingPanelStatus.find
                        ? TotoTheme.primary
                        : Colors.transparent,
                    onPressed: () {
                      _unFocus();
                      sheetController.snapToExtent(
                        _infoSnap,
                        duration: _durationAnimationScrollTo,
                      );
                      widget.showMyLocation(
                        state.currentUserAddress,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          controller: sheetController,
          scrollSpec: ScrollSpec(
            overscroll: false,
            physics: ClampingScrollPhysics(),
          ),
          snapSpec: SnapSpec(
            snap: true,
            snappings: (state.status == SlidingPanelStatus.edit)
                ? snappingEdit
                : (state.status == SlidingPanelStatus.find)
                    ? snappingFind
                    : (state.status == SlidingPanelStatus.usedAddresses)
                        ? snappingUsed
                        : snappingInfo,
            positioning: SnapPositioning.pixelOffset,
            initialSnap: _infoSnap,
          ),
          body: widget.body,
          builder: (context, stateBuild) {
            return ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: Container(
                color: TotoTheme.surface,
                height: (state.status == SlidingPanelStatus.usedAddresses
                        ? _usedAddressesSnap
                        : state.status == SlidingPanelStatus.edit
                            ? _findSnap - 10
                            : state.status == SlidingPanelStatus.info
                                ? _findSnap
                                : _findSnap) -
                    _heightHeader,
                width: MediaQuery.of(context).size.width,
                child: BlocBuilder<DeliveryBloc, DeliveryState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case SlidingPanelStatus.notFound:
                        sheetController.snapToExtent(
                          _editSnap,
                          duration: _durationAnimationScrollTo,
                        );
                        return DeliveryAddressNotFoundForm(
                          onChooseAnotherDeliveryButton:
                              _onChooseAnotherDeliveryButton,
                        );

                      case SlidingPanelStatus.usedAddresses:
                        _snapTo576();
                        return DeliveryAddressesForm(
                          checkedDeliveryAddress:
                              state.usedDeliveryAddressIndex,
                          deliveryAddresses: state.usedDeliveryAddresses,
                          chooseUsedDeliveryAddress: _chooseUsedDeliveryAddress,
                          onAddDeliveryAddressPressed:
                              _onAddDeliveryAddressPressed,
                        );

                      default:
                        return Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BlocBuilder<DeliveryBloc, DeliveryState>(
                              builder: (context, state) {
                                switch (state.status) {
                                  case SlidingPanelStatus.edit:
                                    return Image.asset(
                                      arrowDown,
                                      height: 7,
                                      width: 45,
                                    );

                                  case SlidingPanelStatus.find:
                                    return Image.asset(
                                      arrowDown,
                                      height: 7,
                                      width: 45,
                                    );

                                  default:
                                    return Image.asset(
                                      straightLine,
                                      width: 45,
                                    );
                                }
                              },
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _title,
                                SizedBox(
                                  height: 20,
                                ),
                                AddressInputForm(
                                  readOnly:
                                      state.status == SlidingPanelStatus.find
                                          ? false
                                          : true,
                                  textEditingController:
                                      deliveryAddressTextEditingController,
                                  onTap: _onInputFormTapped,
                                  deliveryAddress: state.currentUserAddress,
                                  deliveryAddressStatus:
                                      state.deliveryAddressState,
                                  focusInput: focusTextEditingDeliveryAddress,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            BlocBuilder<DeliveryBloc, DeliveryState>(
                              builder: (context, state) {
                                switch (state.status) {
                                  case SlidingPanelStatus.find:
                                    return Container(
                                      child: DeliveryFind(
                                        onFoundByQueryAddressTapped:
                                            _onFoundByQueryAddressTapped,
                                      ),
                                    );

                                  case SlidingPanelStatus.edit:
                                    return Container(
                                      child: DeliveryEdit(
                                        onResumePressed:
                                            _onCreateNewDeliveryAddressPressed,
                                        address: state.suggestDeliveryAddress,
                                        apartmentTextEditingController: widget
                                            .apartmentTextEditingController,
                                        entranceTextEditingController: widget
                                            .entranceTextEditingController,
                                        floorTextEditingController:
                                            widget.floorTextEditingController,
                                        commentTextEditingController:
                                            widget.commentTextEditingController,
                                        onTapToInput: _onTapToInputInEdit,
                                      ),
                                    );

                                  default:
                                    return DeliveryInfo(
                                      onResumeButtonPressed:
                                          _onResumseButtonPressed,
                                    );
                                }
                              },
                            ),
                          ],
                        );
                    }
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _title = Container(
    child: Text(
      TotoDictionary.inputDeliveryAddress,
      style: RobotoTextStyle.smallCapsFs18Fw700(
        TotoTheme.textBase,
      ),
    ),
  );
}
