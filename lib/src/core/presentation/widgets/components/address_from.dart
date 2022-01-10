import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class AddressForm extends StatelessWidget {
  final SheetController sheetController;
  final TextEditingController textEditingController;

  const AddressForm(
      {Key? key,
      required this.sheetController,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    InkWell _buildSuggestions(SuggestItem suggestion) {
      return InkWell(
        onTap: () async {
          textEditingController.clear();
          await sheetController.snapToExtent(
            240 / MediaQuery.of(context).size.height,
            duration: Duration(milliseconds: 500),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 31, right: 30),
            child: Text(
              suggestion.searchText,
              style: RobotoTextStyle.s13w400(Colors.grey),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      );
    }

    return BlocBuilder<DeliveryBloc, DeliveryState>(
      builder: (context, state) {
        return Container(
          height: 500,
        );
      },
    );
  }
}
