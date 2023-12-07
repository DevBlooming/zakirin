class ZikrModel {
  final int id;
  final String content;
  final int count;
  final String? reward;

  const ZikrModel({
    required this.id,
    required this.content,
    required this.count,
    this.reward,
  });
}
