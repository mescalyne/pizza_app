import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/contacts.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/cell_items.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/utils/validator.dart';

const _listViewPadding = EdgeInsets.only(top: 20, bottom: 90);

class ContactsMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: TotoTheme.bg,
            foregroundColor: TotoTheme.text.base,
            titleTextStyle: RobotoTextStyle.titleTextStyle(),
            title: Text(state.screenName),
          ),
          backgroundColor: TotoTheme.gray,
          body: BlocConsumer<ContactsBloc, ContactsState>(
            listener: (context, state) {
              switch (state.status) {
                case DataStatus.error:
                  AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
                  context
                      .read<ContactsBloc>()
                      .add(ContactsEvent.errorLoading());
                  break;
                default:
                  if (state.urlOpenResult == false) {
                    AppSnackBar.showSnackBar(
                        TotoDictionary.error.urlOpenError, context);
                  }
              }
            },
            builder: (context, state) {
              if (state.status == DataStatus.success) {
                if (state.data.isNotEmpty) {
                  return getDataColumn(state.data, context);
                } else {
                  return getFailureView(TotoDictionary.error.dataError);
                }
              } else if (state.status == DataStatus.loading) {
                return getLoadingView();
              } else {
                return getFailureView(TotoDictionary.error.dataError);
              }
            },
          ),
        );
      },
    );
  }

  Widget getDataColumn(List<ContactCellItem> data, BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: _listViewPadding,
              itemCount: data.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ContactRow(data[index]);
              }),
        ),
      ],
    );
  }

  Widget getLoadingView() {
    return LoaderWidget();
  }

  Widget getFailureView(String errorText) {
    return Container(
      child: Center(
        child: Text(
          errorText,
          style: RobotoTextStyle.s24w700(TotoTheme.text.primaryDark),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final ContactCellItem cellData;

  static const _rateButtonPadding = EdgeInsets.only(top: 60, left: 16, right: 16);
  static const _imagePadding =
      EdgeInsets.only(top: 30, bottom: 16, left: 86, right: 87);
  static const _standardPadding = EdgeInsets.all(8.0);
  static const _textNumberPadding = EdgeInsets.only(top: 3, bottom: 3);
  static const _linkBottomPadding = EdgeInsets.only(bottom: 20);
  static const _linkIconSize = 26.0;

  ContactRow(this.cellData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: configRowByData(context),
        ),
        Padding(
          padding: _rateButtonPadding,
          child: RoundedButton(
            label: TotoDictionary.rateApp,
            onPressed: () => onActiveButtonTap(context),
            hasArrow: false,
          ),
        )
      ],
    );
  }

  Widget? configRowByData(BuildContext context) {
    var columnChildren = <Widget>[];
    if (cellData.logoUrl != null) {
      var image = Padding(
        padding: _imagePadding,
        child: FadeInImage.assetNetwork(
          image: cellData.logoUrl!,
          fit: BoxFit.fitWidth,
          placeholder: placeholderPath,
        ),
      );
      columnChildren.add(image);
    }
    if (emailByData(context) != null) {
      columnChildren.add(emailByData(context)!);
    }
    if (numberByData(context) != null) {
      columnChildren.add(numberByData(context)!);
    }
    if (linksByData(context) != null) {
      columnChildren.add(linksByData(context)!);
    }
    return Column(
      children: columnChildren,
    );
  }

  Widget? emailByData(BuildContext context) {
    if (cellData.email == null) {
      return null;
    }
    var email = cellData.email!.toUpperCase();
    return GestureDetector(
      child: Padding(
        padding: _standardPadding,
        child: Text(email.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs14Fw700UnderLine(
                TotoTheme.text.base),
            textAlign: TextAlign.center),
      ),
      onTap: () =>
          {context.read<ContactsBloc>().add(ContactsEvent.emailPressed(email))},
    );
  }

  Widget? numberByData(BuildContext context) {
    if (cellData.phones.isEmpty) {
      return null;
    }
    var numbers = <Widget>[];
    for (var phoneNumber in cellData.phones) {
      numbers.add(numberWithAction(phoneNumber, context));
    }
    numbers.add(Padding(
      padding: _textNumberPadding,
      child: Text(
        TotoDictionary.callPrice,
        style: RobotoTextStyle.s10w400(TotoTheme.primaryDark),
        textAlign: TextAlign.start,
      ),
    ));
    return Padding(
      padding: _standardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: numbers,
      ),
    );
  }

  Widget? linksByData(BuildContext context) {
    if (cellData.links.isEmpty) {
      return null;
    }
    var links = <Widget>[];
    for (var link in cellData.links) {
      String icon;
      switch (link.icon) {
        case SocialNetworkIcon.facebook:
          icon = facebookLink;
          break;
        case SocialNetworkIcon.vk:
          icon = vkLink;
          break;
        case SocialNetworkIcon.instagram:
          icon = instagramLink;
          break;
        case SocialNetworkIcon.ok:
          icon = odnoklassnikiLink;
          break;
        case SocialNetworkIcon.standard:
          icon = ellipse;
          break;
      }
      links.add(imageWithAction(link.href, icon, context));
    }
    return Padding(
      padding: _linkBottomPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: links,
      ),
    );
  }

  Widget imageWithAction(String url, String image, BuildContext context) {
    return Padding(
      padding: _standardPadding,
      child: GestureDetector(
        child: Image.asset(
          image,
          color: TotoTheme.icon.gray,
          width: _linkIconSize,
          fit: BoxFit.fitWidth,
        ),
        onTap: () => {
          context
              .read<ContactsBloc>()
              .add(ContactsEvent.socialNetworksPressed(url))
        },
      ),
    );
  }

  Widget numberWithAction(String phoneNumber, BuildContext context) {
    return GestureDetector(
      child: Text(
        PatternParser.parseMaskPhoneNumberToDecoration(phoneNumber),
        style: RobotoTextStyle.s18w400(TotoTheme.primaryDark),
        textAlign: TextAlign.start,
      ),
      onTap: () => {
        context
            .read<ContactsBloc>()
            .add(ContactsEvent.phoneCallPressed(phoneNumber))
      },
    );
  }

  void onActiveButtonTap(BuildContext context) {
    context.read<ContactsBloc>().add(ContactsEvent.rateAppPressed());
  }
}
