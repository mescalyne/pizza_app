import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryEdit extends StatelessWidget {
  final Function onResumePressed;
  final Function onTapToInput;

  final TextEditingController entranceTextEditingController;
  final TextEditingController floorTextEditingController;
  final TextEditingController apartmentTextEditingController;
  final TextEditingController commentTextEditingController;
  final DeliveryDto address;
  DeliveryEdit({
    Key? key,
    required this.entranceTextEditingController,
    required this.floorTextEditingController,
    required this.apartmentTextEditingController,
    required this.onResumePressed,
    required this.onTapToInput,
    required this.address,
    required this.commentTextEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _item(
                  entranceTextEditingController,
                  TotoDictionary.entrance,
                ),
                _item(
                  floorTextEditingController,
                  TotoDictionary.floor,
                ),
                _item(
                  apartmentTextEditingController,
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
          ),
        ],
      ),
    );
  }

  Widget _commentBlocTitle = Container(
    margin: const EdgeInsets.only(bottom: 5),
    child: Text(
      TotoDictionary.comment,
      style: RobotoTextStyle.s13w400(TotoTheme.darkGrayText),
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
            keyboardType: TextInputType.text,
            style: RobotoTextStyle.smallCapsFs13Fw400(
              Colors.grey,
            ),
            controller: commentTextEditingController,
            onTap: () => onTapToInput(),
            maxLines: 4,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
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
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),
          Container(
            height: 40,
            width: 90,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: RobotoTextStyle.smallCapsFs13Fw400(
                Colors.grey,
              ),
              controller: textEditingController,
              textAlign: TextAlign.center,
              onTap: () => onTapToInput(),
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

  Widget _resumeButton(BuildContext context) => Container(
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
            child: Text(TotoDictionary.resume,
                style: RobotoTextStyle.s16w400(TotoTheme.surface)),
          ),
        ),
      );
}
