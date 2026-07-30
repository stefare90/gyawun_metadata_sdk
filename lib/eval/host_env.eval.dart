// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../metadata/host_env.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/inetwork_service.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/istorage_service.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iui_service.dart';
import 'package:gyawun_metadata_sdk/src/version.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/inetwork_service.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/istorage_service.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iui_service.eval.dart';

/// dart_eval wrapper binding for [HostEnv]
class $HostEnv implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:gyawun_metadata_sdk/metadata/host_env.dart',
      'HostEnv.',
      $HostEnv.$new,
    );

    runtime.registerBridgeFunc(
      'package:gyawun_metadata_sdk/metadata/host_env.dart',
      'HostEnv.sdkVersion*g',
      $HostEnv.$sdkVersion,
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

            BridgeParameter(
              'storage',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/interfaces/istorage_service.dart',
                    'IStorageService',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'ui',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/interfaces/iui_service.dart',
                    'IUIService',
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
      'sdkVersion': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: true,
      ),

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

      'storage': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:gyawun_metadata_sdk/metadata/interfaces/istorage_service.dart',
              'IStorageService',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'ui': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:gyawun_metadata_sdk/metadata/interfaces/iui_service.dart',
              'IUIService',
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
    return $HostEnv.wrap(
      HostEnv(
        network: args[0]!.$value,
        storage: args[1]!.$value,
        ui: args[2]!.$value,
      ),
    );
  }

  /// Wrapper for the [HostEnv.sdkVersion] getter
  static $Value? $sdkVersion(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = HostEnv.sdkVersion;
    return $String(value);
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

      case 'storage':
        final _storage = $value.storage;
        return $IStorageService.wrap(_storage);

      case 'ui':
        final _ui = $value.ui;
        return $IUIService.wrap(_ui);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
