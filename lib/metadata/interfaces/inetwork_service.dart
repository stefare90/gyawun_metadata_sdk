import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/plugin_request.dart';
import 'package:gyawun_metadata_sdk/metadata/models/plugin_response.dart';

@Bind()
abstract class INetworkService {
  Future<PluginResponse> send(PluginRequest request);
}
