import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/inetwork_service.dart';

@Bind()
class HostEnv {
  final INetworkService network;

  HostEnv({required this.network});
}
