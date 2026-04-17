// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/istorage_service.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';

/// dart_eval wrapper binding for [IStorageService]
class $IStorageService implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$IStorageService]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/istorage_service.dart',
    'IStorageService',
  );

  /// Compile-time type declaration of [$IStorageService]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IStorageService]
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
      'get': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'set': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'delete': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'key',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'clear': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final IStorageService $value;

  @override
  IStorageService get $reified => $value;

  /// Wrap a [IStorageService] in a [$IStorageService]
  $IStorageService.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'get':
        return __get;

      case 'set':
        return __set;

      case 'delete':
        return __delete;

      case 'clear':
        return __clear;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __get = $Function(_get);
  static $Value? _get(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $IStorageService;
    final dynamic rawKey = args[0];
    final String key = rawKey is $Value ? rawKey.$value : rawKey;
    final result = self.$value.get(key);
    return $Future.wrap(
      result.then((e) => e == null ? const $null() : $String(e)),
    );
  }

  static const $Function __set = $Function(_set);
  static $Value? _set(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $IStorageService;
    final dynamic rawKey = args[0];
    final String key = rawKey is $Value ? rawKey.$value : rawKey;
    final dynamic rawValue = args[1];
    final String value = rawValue is $Value ? rawValue.$value : rawValue;
    final result = self.$value.set(key, value);
    return $Future.wrap(result.then((e) => null));
  }

  static const $Function __delete = $Function(_delete);
  static $Value? _delete(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $IStorageService;
    final result = self.$value.delete(args[0]!.$value);
    return $Future.wrap(result.then((e) => null));
  }

  static const $Function __clear = $Function(_clear);
  static $Value? _clear(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $IStorageService;
    final result = self.$value.clear();
    return $Future.wrap(result.then((e) => null));
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
