import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';

class BottomGeolocation extends StatelessWidget {
  final SheetController sheetController;
  final Function onLocationSelected;
  final String address;

  const BottomGeolocation(
      {Key? key,
      required this.address,
      required this.sheetController,
      required this.onLocationSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0, left: 10, right: 10),
            child: TextButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size.fromWidth(MediaQuery.of(context).size.width)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(top: 14, bottom: 14)),
                backgroundColor: MaterialStateProperty.all(Color(0xFFAAC52D)),
                shape:
                    MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
                  (states) {
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100));
                  },
                ),
              ),
              onPressed: () async {
                onLocationSelected(address);
              },
              child: Container(
                child: Text(
                  TotoDictionary.resume,
                  style: RobotoTextStyle.s16w400(Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
