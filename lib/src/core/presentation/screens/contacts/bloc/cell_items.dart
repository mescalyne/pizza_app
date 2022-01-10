
import 'package:toto_mobile/src/core/domain/entities/contacts.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';


class ContactCellItem implements ListItem {
  @override
  CellType cellType;

  String? logoUrl;
  String? email;
  List<String> phones;
  List<NetworksLink> links;


  ContactCellItem({required this.cellType, this.logoUrl, this.email, required this.phones, required this.links});
}

class NetworksLink {
  String href;
  SocialNetworkIcon icon;

  NetworksLink({required this.href, required this.icon});
}

