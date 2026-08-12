import 'package:eval_annotation/eval_annotation.dart';

@Bind()
class Section {
  final String id;
  final String title;
  final String? description;

  const Section({required this.id, required this.title, this.description});
}
