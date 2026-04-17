import 'package:eval_annotation/eval_annotation.dart';

@Bind()
abstract class IStorageService {
  Future<String?> get(String key);
  Future<void> set(String key, String value);
  Future<void> delete(String key);
  Future<void> clear();
}
