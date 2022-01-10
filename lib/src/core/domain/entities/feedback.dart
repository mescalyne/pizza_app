
class FeedbackDto {
  int id;
  int mark;
  String? comment;
  List<FeedbackMarkDto> marksOptions;

  FeedbackDto({required this.id, required this.mark, required this.marksOptions, this.comment});
}

class FeedbackMarkDto {
  int optionId;
  bool mark;
  FeedbackMarkDto({required this.optionId, required this.mark});
}