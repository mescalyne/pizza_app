import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../../resources/resources.dart';
import '../../../../../resources/svg.dart';
import '../../../../domain/entities/delivery_address.dart';
import '../../../router/bloc/bloc.dart';
import '../../../router/bloc/event.dart';
import '../bloc/bloc.dart';
import '../bloc/state.dart';
import 'widgets/delivery_sliding_sheet.dart';

class DeliveryChoosePage extends StatefulWidget {
  final ChooseDeliveryAddressScenario scenario;
  DeliveryChoosePage({Key? key, required this.scenario}) : super(key: key);
  Placemark? savedPlacemark;
  final TextEditingController _entranceTextEditingController =
      TextEditingController(text: '0');
  final TextEditingController _floorTextEditingController =
      TextEditingController(text: '0');
  final TextEditingController _apartmentTextEditingController =
      TextEditingController(text: '0');
  final TextEditingController _commentTextEditingController =
      TextEditingController();

  @override
  State<DeliveryChoosePage> createState() => _DeliveryChoosePageState();
}

class _DeliveryChoosePageState extends State<DeliveryChoosePage> {
  // * WIDGETS
  Widget _appBar() => Container(
        height: Size.fromHeight(61).height + MediaQuery.of(context).padding.top,
        color: TotoTheme.surface,
        child: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: TotoTheme.surface,
          leading: IconButton(
            onPressed: () {
              context.read<RouterBloc>().add(RouterEvent.pop());
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          title: Text(
            'Добавить адрес',
            style: TextStyle(color: Colors.black),
          ),
        ),
      );

  Widget _yandexMap() => YandexMap(
        onMapRendered: _onMapRendered,
        onMapCreated: _onMapCreated,
      );

  Widget _bottomSlidingPanel() => DeliverySlidingSheet(
        body: _yandexMap(),
        showMyLocation: _showAddressOnMap,
        scenario: widget.scenario,
        apartmentTextEditingController: widget._apartmentTextEditingController,
        entranceTextEditingController: widget._entranceTextEditingController,
        floorTextEditingController: widget._floorTextEditingController,
        commentTextEditingController: widget._commentTextEditingController,
      );

  late YandexMapController mapController;

  void _showAddressOnMap(DeliveryDto? address) async {
    if (address == null) return;
    if (widget.savedPlacemark != null) {
      mapController.removePlacemark(widget.savedPlacemark!);
    }
    mapController.move(
      point: Point(
        latitude: address.latitude,
        longitude: address.longitude,
      ),
      animation: MapAnimation(
        duration: 0.5,
        smooth: true,
      ),
    );
    ByteData data = await rootBundle.load(userPin);
    widget.savedPlacemark = Placemark(
      onTap: (placemark, point) {
        mapController.move(point: point);
      },
      style: PlacemarkStyle(
        isDraggable: true,
        scale: 1,
        opacity: 1,
        rawImageData: data.buffer.asUint8List(),
      ),
      point: Point(
        latitude: address.latitude,
        longitude: address.longitude,
      ),
    );
    mapController.addPlacemark(
      widget.savedPlacemark!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<DeliveryBloc, DeliveryState>(
        listener: (context, state) async {
          switch (state.deliveryAddressState) {
            case DeliveryAddressStatus.updated:
              _showAddressOnMap(
                state.currentUserAddress,
              );
              break;
            case DeliveryAddressStatus.suggestionUpdated:
              _showAddressOnMap(
                state.suggestDeliveryAddress,
              );
              break;
            default:
              break;
          }
        },
        child: Stack(
          children: [
            _bottomSlidingPanel(),
            _appBar(),
          ],
        ),
      ),
    );
  }

  void _onMapRendered() async {}

  void _onMapCreated(YandexMapController controller) async {
    mapController = controller;
  }
}
