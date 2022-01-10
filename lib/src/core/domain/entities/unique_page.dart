class UniquePageDto {
  String? title;
  String? slug;
  String? iconPath;
  String? thumbnailIconPath;
  MediaFileType? type;

  UniquePageDto({
    this.title,
    this.slug,
    this.iconPath,
    this.thumbnailIconPath,
    this.type,
  });
}
enum MediaFileType { image, video, text, audio, standard }