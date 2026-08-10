import 'package:dart_eval/dart_eval.dart';
import 'package:gyawun_metadata_sdk/eval/eval_unboxer.dart';
import 'package:gyawun_metadata_sdk/eval/host_env.eval.dart';
import 'package:gyawun_metadata_sdk/metadata/host_env.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/imetadata_plugin.dart';

IMetadataPlugin loadPluginFromRuntime({
  required Runtime runtime,
  required String packageId,
  required HostEnv hostEnv,
  String entryPointFunction = 'getPlugin',
}) {
  try {
    final result = runtime.executeLib(
      'package:$packageId/main.dart',
      entryPointFunction,
      [$HostEnv.wrap(hostEnv)],
    );
    if (result == null) {
      throw Exception(
        "The plugin entrypoint '$entryPointFunction' returned null.",
      );
    }
    final unboxed = unboxValue(result);
    if (unboxed is! IMetadataPlugin) {
      throw Exception(
        "The plugin entrypoint '$entryPointFunction' did not return a valid IMetadataPlugin instance.",
      );
    }
    return unboxed;
  } catch (e, st) {
    throw unboxException(e, st);
  }
}
