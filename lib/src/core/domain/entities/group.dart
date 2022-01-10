class GroupDto {
  final String image;
  final String title;
  final String id;

  GroupDto({
    required this.image,
    required this.id,
    required this.title,
  });
}


class GroupFiltersInput {
  final List<String>? ids;
  final bool? notIncludedInMenu;

  GroupFiltersInput({
     this.ids,
     this.notIncludedInMenu,
  });
}
