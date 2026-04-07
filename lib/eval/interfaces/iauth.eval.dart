// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/iauth.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval bridge binding for [IAuth]
class $IAuth$bridge extends IAuth with $Bridge<IAuth> {
  /// Forwarded constructor for [IAuth.new]
  $IAuth$bridge();

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$IAuth$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/iauth.dart',
    'IAuth',
  );

  /// Compile-time type declaration of [$IAuth$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IAuth]
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
      'authenticate': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'logout': BridgeMethodDef(
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

      'isAuthenticated': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
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
    wrap: false,
    bridge: true,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'authenticate':
        return $Function((runtime, target, args) {
          final result = super.authenticate(args[1]!.$value);
          return $Future.wrap(result.then((e) => null));
        });
      case 'logout':
        return $Function((runtime, target, args) {
          final result = super.logout();
          return $Future.wrap(result.then((e) => null));
        });
      case 'isAuthenticated':
        return $Function((runtime, target, args) {
          final result = super.isAuthenticated();
          return $Future.wrap(result.then((e) => $bool(e)));
        });
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<void> authenticate(String id) =>
      $_invoke('authenticate', [$String(id)]);

  @override
  Future<void> logout() => $_invoke('logout', []);

  @override
  Future<bool> isAuthenticated() => $_invoke('isAuthenticated', []);
}
