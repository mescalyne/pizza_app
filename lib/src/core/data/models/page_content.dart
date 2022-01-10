class AttachmentData {
  String header;
  String description;

  AttachmentData(this.header, this.description);

  factory AttachmentData.fromJson(dynamic json) {
    return AttachmentData(
        json['header'] as String, json['description'] as String);
  }
}

class LinkData {
  String title;
  String url;

  LinkData(this.title, this.url);

  factory LinkData.fromJson(dynamic json) {
    return LinkData(json['title'] as String, json['url'] as String);
  }
}

enum DataType { image, roundImage, attachment, text, link, linkButton, images, email }
