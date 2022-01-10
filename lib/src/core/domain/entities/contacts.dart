import 'city.dart';

class ContactsDto {
  CityDto? city;
  String? title;
  List<ContactContentDto> contents;

  ContactsDto({
    required this.title,
    this.city,
    required this.contents,
  });
}

class ContactContentDto {
  String id;
  ContactDto contact;

  ContactContentDto({required this.id, required this.contact});
}

class ContactDto {
  String? logo;
  String? email;
  List<String> telephones;
  List<SocialNetworkLinkDto> socialNetworks;

  ContactDto(
      {this.logo,
      this.email,
      required this.telephones,
      required this.socialNetworks});
}

class SocialNetworkLinkDto {
  String href;
  SocialNetworkIcon? icon;

  SocialNetworkLinkDto({required this.href, required this.icon});
}

enum SocialNetworkIcon { facebook, vk, instagram, ok, standard }
