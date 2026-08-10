import 'package:dart_eval/dart_eval_bridge.dart';

dynamic unboxValue(dynamic raw) {
  if (raw == null) return null;
  dynamic current = raw;
  while (current is $Value) {
    final val = current.$value;
    if (val == null) break;
    current = val;
  }
  if (current is $Instance) {
    current = current.$reified;
  }
  while (current is $Value) {
    final val = current.$value;
    if (val == null) break;
    current = val;
  }
  return current;
}

Exception unboxException(dynamic error, [StackTrace? stackTrace]) {
  if (error is Exception && error is! $Value && error is! $Instance) {
    return error;
  }
  final unboxed = unboxValue(error);
  String message =
      unboxed?.toString() ?? 'An unknown error occurred inside the plugin.';
  if (message.startsWith('Exception: ')) {
    message = message.substring('Exception: '.length);
  }
  return Exception(message);
}
