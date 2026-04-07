// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/icore.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval bridge binding for [ICore]
class $ICore$bridge extends ICore with $Bridge<ICore> {
  /// Forwarded constructor for [ICore.new]
  $ICore$bridge();

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$ICore$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/icore.dart',
    'ICore',
  );

  /// Compile-time type declaration of [$ICore$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ICore]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'checkUpdate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
                nullable: true,
              ),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'pluginConfig',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'support': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),

      'scrobble': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'details',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: false,
    bridge: true,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'checkUpdate':
        return $Function((runtime, target, args) {
          final result = super.checkUpdate((args[1]!.$reified as Map).cast());
          return $Future.wrap(
            result.then((e) => e == null ? const $null() : $Map.wrap(e)),
          );
        });
      case 'support':
        return $Function((runtime, target, args) {
          final result = super.support();
          return $String(result);
        });
      case 'scrobble':
        return $Function((runtime, target, args) {
          final result = super.scrobble((args[1]!.$reified as Map).cast());
          return $Future.wrap(result.then((e) => null));
        });
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<Map<String, dynamic>?> checkUpdate(
    Map<String, dynamic> pluginConfig,
  ) => $_invoke('checkUpdate', [$Map.wrap(pluginConfig)]);

  @override
  String support() => $_invoke('support', []);

  @override
  Future<void> scrobble(Map<String, dynamic> details) =>
      $_invoke('scrobble', [$Map.wrap(details)]);
}
