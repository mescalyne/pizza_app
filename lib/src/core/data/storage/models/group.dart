class CategoryType {
  final String image;
  final String title;

  CategoryType({required this.image, required this.title});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryType &&
        other.image == image &&
        other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;

  @override
  String toString() => 'CategoryType(image: $image, title: $title)';
}
