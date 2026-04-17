import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/form_input_field.dart';

@Bind()
abstract class IUIService {
  Future<Map<String, String>> showForm({
    required String title,
    String? message,
    required List<FormInputField> fields,
    String submitLabel = "Confirm",
    String cancelLabel = "Cancel",
  });
}
