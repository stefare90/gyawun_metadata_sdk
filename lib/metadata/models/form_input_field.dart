import 'package:eval_annotation/eval_annotation.dart';

@Bind()
class FormInputField {
  final String id;
  final String label;
  final bool isPassword;
  final String? placeholder;
  final String? defaultValue;

  FormInputField({
    required this.id,
    required this.label,
    this.isPassword = false,
    this.placeholder,
    this.defaultValue,
  });
}
