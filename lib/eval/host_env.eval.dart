// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../metadata/host_env.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/inetwork_service.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/inetwork_service.eval.dart';

/// dart_eval wrapper binding for [HostEnv]
class $HostEnv implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:gyawun_metadata_sdk/metadata/host_env.dart',
      'HostEnv.',
      $HostEnv.$new,
    );
  }

  /// Compile-time type specification of [$HostEnv]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/host_env.dart',
    'HostEnv',
  );

  /// Compile-time type declaration of [$HostEnv]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$HostEnv]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'network',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/interfaces/inetwork_service.dart',
                    'INetworkService',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'network': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:gyawun_metadata_sdk/metadata/interfaces/inetwork_service.dart',
              'INetworkService',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [HostEnv.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $HostEnv.wrap(HostEnv(network: args[0]!.$value));
  }

  final $Instance _superclass;

  @override
  final HostEnv $value;

  @override
  HostEnv get $reified => $value;

  /// Wrap a [HostEnv] in a [$HostEnv]
  $HostEnv.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'network':
        final _network = $value.network;
        return $INetworkService.wrap(_network);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
