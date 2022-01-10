import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/web/contacts.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

import 'mobile/contacts.dart';
import 'mweb/contacts.dart';

class ContactsPage extends StatefulWidget {
  static const id = '/contacts';

  @override
  State<StatefulWidget> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: ContactsMobilePage(),
      web: ContactsWebPage(),
      mobileweb: ContactsMobileWebPage(),
    );
  }
}
