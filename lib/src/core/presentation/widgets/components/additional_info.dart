import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class AdditionAddressInfo extends StatelessWidget {
  final SheetController sheetController;
  final Function onResumePressed;
  final TextEditingController _addressTextEditingController =
      TextEditingController();
  final TextEditingController _entranceTextEditingController =
      TextEditingController();
  final TextEditingController _floorTextEditingController =
      TextEditingController();
  final TextEditingController _apartmentTextEditingController =
      TextEditingController();
  final TextEditingController _commentTextEditingController =
      TextEditingController();
  final String address;

  AdditionAddressInfo(
      {Key? key,
      required this.address,
      required this.sheetController,
      required this.onResumePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * PRIVATE FUNCTIONS

    String _formatedAddress =
        '${_entranceTextEditingController.text} ${_floorTextEditingController.text} ${_floorTextEditingController.text}';

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _item(
                  _entranceTextEditingController,
                  TotoDictionary.entrance,
                ),
                _item(
                  _floorTextEditingController,
                  TotoDictionary.floor,
                ),
                _item(
                  _apartmentTextEditingController,
                  TotoDictionary.apartment,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _commentBlocTitle,
                _commentTextForm(context),
              ],
            ),
          ),
          _resumeButton(
            context,
            _formatedAddress,
          ),
        ],
      ),
    );
  }

  Widget _commentBlocTitle = Container(
    margin: const EdgeInsets.only(bottom: 5),
    child: Text(
      TotoDictionary.comment,
      style: RobotoTextStyle.s13w400(Colors.grey),
    ),
  );

  Widget _commentTextForm(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border.all(color: TotoTheme.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextFormField(
            controller: _commentTextEditingController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: TotoDictionary.yourComment,
              hintStyle: RobotoTextStyle.s13w400(Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
      );

  Widget _item(TextEditingController textEditingController, String title) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15,
            width: 60,
            margin: EdgeInsets.only(bottom: 4),
            child: Text(
              title,
              style: RobotoTextStyle.s13w400(Colors.grey),
            ),
          ),
          Container(
            height: 40,
            width: 90,
            child: TextFormField(
              controller: textEditingController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: TotoTheme.primary,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: TotoTheme.primary,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  Widget _resumeButton(BuildContext context, String formatedAddress) =>
      Container(
        height: 40,
        margin: EdgeInsets.only(bottom: 40, top: 15),
        child: TextButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
                Size.fromWidth(MediaQuery.of(context).size.width)),
            backgroundColor: MaterialStateProperty.all(Color(0xFFAAC52D)),
            shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
              (states) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100));
              },
            ),
          ),
          onPressed: () => onResumePressed(
            address,
          ),
          child: Container(
            child: Text(
              TotoDictionary.resume,
              style: RobotoTextStyle.s16w400(TotoTheme.surface),
            ),
          ),
        ),
      );
}
