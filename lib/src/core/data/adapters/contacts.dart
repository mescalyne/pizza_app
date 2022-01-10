import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/contacts.dart';

extension ContactsAdapter on GContactPageFragment {
  ContactsDto get toContactsDto {
    var _contents = <ContactContentDto>[];
    if (contents != null) {
      for (var element in contents!) {
        _contents.add(element.toContactContentDto);
      }
    }
    return ContactsDto(
        title: title,
        contents: _contents,
        city: (city != null) ? city!.toCityDto : null);
  }
}

extension ContentCityAdapter on GContactPageFragment_city {
  CityDto get toCityDto {
    return CityDto(
        id: id,
        name: name,
        prefix: prefix,
        postalCode: postal_code,
        cityType: city_type,
        available: (available != null) ? available! : false);
  }
}

extension ContactContentAdapter on GContactPageFragment_contents {
  ContactContentDto get toContactContentDto {
    return ContactContentDto(id: id, contact: data.toContactDto);
  }
}

extension ContactAdapter on GContactPageFragment_contents_data {
  ContactDto get toContactDto {
    var _socialNetworks = <SocialNetworkLinkDto>[];
    var _telephones = <String>[];
    if (social_networks != null) {
      for (var element in social_networks!) {
        _socialNetworks.add(element.toSocialNetworkLinkDto);
      }
    }
    if (telephones != null) {
      for (var element in telephones!) {
        _telephones.add(element);
      }
    }
    return ContactDto(
        telephones: _telephones,
        socialNetworks: _socialNetworks,
        email: email,
        logo: logo);
  }
}

extension SocialNetworkAdapter
    on GContactPageFragment_contents_data_social_networks {
  SocialNetworkLinkDto get toSocialNetworkLinkDto {
    return SocialNetworkLinkDto(
        href: href, icon: mapSocialNetworkIconDto[icon.name]);
  }
}

Map<String, SocialNetworkIcon> mapSocialNetworkIconDto = {
  'ICON_FACEBOOK': SocialNetworkIcon.facebook,
  'ICON_INSTAGRAM': SocialNetworkIcon.instagram,
  'ICON_OK': SocialNetworkIcon.ok,
  'ICON_VK': SocialNetworkIcon.vk,
};
