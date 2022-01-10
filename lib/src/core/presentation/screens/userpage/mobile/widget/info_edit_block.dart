import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';
import 'package:toto_mobile/src/utils/validator.dart';

const lastDate = 2020;

const inputFieldPadding = EdgeInsets.only(bottom: 8);
const inputIconPadding = EdgeInsets.symmetric(horizontal: 16);
const iconSize = 24.0;
const heightMinRow = 40.0;

class BottomItemField extends StatefulWidget {
  final UserDto currentUser;
  final userpageContext;

  @override
  State<StatefulWidget> createState() => _BottomItemFieldState();

  BottomItemField({
    required this.currentUser,
    required this.userpageContext,
  });
}

class _BottomItemFieldState extends State<BottomItemField> {
  final _formKey = GlobalKey<FormState>();

  var userNameController = TextEditingController();
  var userMailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userNameController.text = widget.currentUser.name ?? '';
    userMailController.text = widget.currentUser.email ?? '';
  }

  DateTime currentDate = DateTime(lastDate);
  String birthdayString = TotoDictionary.userInfoBirthDate;

  static const infoRowPadding = EdgeInsets.only(left: 16, right: 16);

  static const heightOfContainer = 45.0;
  static const heightOfTitle = 49.0;
  static const heightOfSpace = 57.0;
  static const heightBetweenColumnElements = 16.0;

  static const inputBorderWidth = 1.0;
  static const inputBorderRadius = 20.0;

  static const paddingOfIcon = EdgeInsets.only(left: 6);
  static const rightPaddingOfIcon = EdgeInsets.only(right: 6);
  static const widthOfIcon = 60.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowDownButton(),
              Container(
                height: heightOfTitle,
                padding: infoRowPadding,
                child: Text(
                  TotoDictionary.userInfoProfileSetting,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                  padding: infoRowPadding,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: AlignmentDirectional.center,
                                constraints: BoxConstraints(
                                    minHeight: heightMinRow,
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.8),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return TotoDictionary
                                          .userInfoPleaseInputName;
                                    }
                                    if (!StaticValidators.userNameValidator(
                                        value)) {
                                      return TotoDictionary
                                          .userInfoNotCorrectName;
                                    }
                                  },
                                  style: TextStyle(fontSize: 14),
                                  textCapitalization: TextCapitalization.words,
                                  controller: userNameController,
                                  decoration: _FieldInputDecorator(
                                    TotoDictionary.userInfoName,
                                    Icon(TotoIcons.profile, size: iconSize),
                                    true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(height: heightBetweenColumnElements),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                constraints: BoxConstraints(
                                    minHeight: heightMinRow,
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.8),
                                alignment: AlignmentDirectional.center,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return TotoDictionary
                                          .userInfoPleaseInputEmail;
                                    }
                                    if (!StaticValidators.emailValidator(
                                        value)) {
                                      return TotoDictionary
                                          .userInfoNotCorrectEmail;
                                    }
                                  },
                                  style: TextStyle(fontSize: 14),
                                  controller: userMailController,
                                  decoration: _FieldInputDecorator(
                                    TotoDictionary.userInfoPleaseEmail,
                                    Icon(TotoIcons.email, size: iconSize),
                                    true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(height: heightBetweenColumnElements),
                        GestureDetector(
                          child: Container(
                            height: heightOfContainer,
                            alignment: AlignmentDirectional.center,
                            decoration: BoxDecoration(
                              color: TotoTheme.background.base,
                              border: Border.all(
                                  width: inputBorderWidth,
                                  color: TotoTheme.primary),
                              borderRadius:
                                  BorderRadius.circular(inputBorderRadius),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: paddingOfIcon,
                                  width: widthOfIcon,
                                  child: Icon(
                                    TotoIcons.event,
                                    color: TotoTheme.icon.gray,
                                  ),
                                ),
                                Container(
                                  height: heightOfContainer,
                                  alignment: AlignmentDirectional.centerStart,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: birthdayWidget(context),
                                ),
                                if (widget.currentUser.dateOfBirth == null)
                                  ..._editImageWithSpacer(),
                              ],
                            ),
                          ),
                          onTap: () {
                            if (widget.currentUser.dateOfBirth == null) {
                              return _selectDate(context);
                            }
                          },
                        ),
                        Container(height: heightBetweenColumnElements),
                        Container(
                          height: heightOfContainer,
                          alignment: AlignmentDirectional.centerStart,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: inputBorderWidth,
                                color: TotoTheme.primary),
                            borderRadius:
                                BorderRadius.circular(inputBorderRadius),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: paddingOfIcon,
                                width: widthOfIcon,
                                child: Icon(
                                  TotoIcons.phone,
                                  color: TotoTheme.icon.gray,
                                ),
                              ),
                              Container(
                                height: heightOfContainer,
                                alignment: AlignmentDirectional.centerStart,
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  widget.currentUser.telephone ?? '',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(height: heightOfSpace),
              Padding(
                padding: infoRowPadding,
                child: RoundedButton(
                  label: TotoDictionary.userInfoContinue,
                  onPressed: () => _onActiveButtonTap(context),
                  hasArrow: false,
                ),
              ),
              Container(height: MediaQuery.of(context).viewInsets.bottom),
            ],
          ),
        ),
      ),
    );
  }

  Widget birthdayWidget(BuildContext context) {
    if (widget.currentUser.dateOfBirth == null) {
      return Text(
        birthdayString,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14),
      );
    } else {
      return Text(
        widget.currentUser.dateOfBirth!,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14),
      );
    }
  }

  List<Widget> _editImageWithSpacer() {
    return [
      Spacer(),
      Padding(
          padding: rightPaddingOfIcon,
          child: Icon(
            TotoIcons.mode,
            size: iconSize,
            color: TotoTheme.icon.gray,
          ))
    ];
  }

  void _onActiveButtonTap(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<UserpageBloc>(widget.userpageContext)
          .add(UserpageEvent.onSaveNewInfo(
        userNameController.text,
        userMailController.text,
        (birthdayString == TotoDictionary.userInfoBirthDate)
            ? null
            : birthdayString,
      ));
      Navigator.pop(context);
    }
  }

  void _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        locale: Locale('ru', 'RU'),
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1950),
        lastDate: DateTime(lastDate));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
        birthdayString = DateTimeExtension.getStringByDate(currentDate);
      });
  }
}

class _FieldInputDecorator extends InputDecoration {
  static InputBorder _inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(heightMinRow)),
      borderSide: BorderSide(color: TotoTheme.input.border));

  static InputBorder _inputErrorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(heightMinRow)),
      borderSide: BorderSide(color: TotoTheme.input.errorBorder));

  _FieldInputDecorator(String name, Widget icon, bool canEdit)
      : super(
          isDense: true,
          enabledBorder: _inputBorder,
          focusedBorder: _inputBorder,
          errorBorder: _inputErrorBorder,
          focusedErrorBorder: _inputErrorBorder,
          border: _inputBorder,
          prefixIcon: Padding(
            padding: inputIconPadding,
            child: icon,
          ),
          suffixIcon: (canEdit)
              ? Padding(
                  padding: inputIconPadding,
                  child: Icon(
                    TotoIcons.mode,
                    size: iconSize,
                  ),
                )
              : null,
          errorStyle: RobotoTextStyle.s11w400(TotoTheme.accentVariant),
          prefixIconConstraints: BoxConstraints(minWidth: 60),
          hintText: name,
        );
}
