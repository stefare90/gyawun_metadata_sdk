import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/inetwork_service.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/istorage_service.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iui_service.dart';
import 'package:gyawun_metadata_sdk/src/version.dart';

@Bind()
class HostEnv {
  static const String sdkVersion = packageVersion;

  final INetworkService network;
  final IStorageService storage;
  final IUIService ui;

  HostEnv({required this.network, required this.storage, required this.ui});
}
