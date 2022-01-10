import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/domain/entities/contacts.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/contacts.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/utils/launchers/url_launcher.dart';
import 'package:in_app_review/in_app_review.dart';

import 'cell_items.dart';
import 'event.dart';

typedef ContactsEventHandler = Stream<ContactsState>;

@Injectable()
class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  final RouterEventSink _routerEventSink;

  final GetContactsUseCase _useCase;

  String? _screenName = TotoDictionary.screenTitle;

  ContactsBloc(this._routerEventSink, this._useCase)
      : super(ContactsState(screenName: TotoDictionary.screenTitle)) {
    add(ContactsEvent.initialization());
  }

  @override
  ContactsEventHandler mapEventToState(ContactsEvent event) => event.when(
        initialization: _initialization,
        errorLoading: _onErrorLoading,
        emailPressed: _emailPressed,
        phoneCallPressed: _phoneCallPressed,
        socialNetworksPressed: _socialNetworksPressed,
        rateAppPressed: _rateAppPressed,
      );

  ContactsEventHandler _initialization() async* {
    yield state.copyWith(status: DataStatus.loading, screenName: _screenName);

    var data = await _useCase.getContacts();
    if ((data.isSuccess) && (data.value != null)) {
      _screenName = data.value!.title;
      yield state.copyWith(
          status: DataStatus.success,
          screenName: data.value!.title,
          data: configData(data.value!));
    }
    if ((data.isFailure) && (data.failureValue == NetworkResult.error)) {
      yield state.copyWith(status: DataStatus.error);
    }
    if ((data.isFailure) &&
        (data.failureValue == NetworkResult.networkFailure)) {
      yield state.copyWith(status: DataStatus.connectionError);
    }
  }

  ContactsEventHandler _onErrorLoading() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  ContactsEventHandler _emailPressed(String email) async* {
    URLLauncher.launchEmail(email);
  }

  ContactsEventHandler _phoneCallPressed(String phoneNumber) async* {
    URLLauncher.launchPhone(phoneNumber);
  }

  ContactsEventHandler _socialNetworksPressed(String url) async* {
    var _urlOpenResult = await URLLauncher.canLaunchUrl(url);
    yield state.copyWith(urlOpenResult: _urlOpenResult);
    URLLauncher.launchUrl(url);
  }

  ContactsEventHandler _rateAppPressed() async* {
    final inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      await inAppReview.requestReview();
    }
    // TODO: wait store reference
  }

  List<ContactCellItem> configData(ContactsDto data) {
    var returnData = <ContactCellItem>[];
    for (final item in data.contents) {
      var links = <NetworksLink>[];
      for (final link in item.contact.socialNetworks) {
        var icon =
            (link.icon != null) ? link.icon! : SocialNetworkIcon.standard;
        links.add(NetworksLink(href: link.href, icon: icon));
      }
      var cellItem = ContactCellItem(
          cellType: CellType.contact,
          phones: item.contact.telephones,
          links: links,
          logoUrl: item.contact.logo,
          email: item.contact.email);
      returnData.add(cellItem);
    }
    return returnData;
  }
}
