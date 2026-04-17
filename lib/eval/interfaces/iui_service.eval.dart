// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/iui_service.dart';
import 'package:gyawun_metadata_sdk/metadata/models/form_input_field.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';

/// dart_eval wrapper binding for [IUIService]
class $IUIService implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$IUIService]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/iui_service.dart',
    'IUIService',
  );

  /// Compile-time type declaration of [$IUIService]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IUIService]
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
      'showForm': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'title',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'message',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'fields',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:gyawun_metadata_sdk/metadata/models/form_input_field.dart',
                        'FormInputField',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'submitLabel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              true,
            ),

            BridgeParameter(
              'cancelLabel',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              true,
            ),
          ],
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
  final IUIService $value;

  @override
  IUIService get $reified => $value;

  /// Wrap a [IUIService] in a [$IUIService]
  $IUIService.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'showForm':
        return __showForm;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __showForm = $Function(_showForm);
  static $Value? _showForm(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $IUIService;
    final result = self.$value.showForm(
      title: args[0]!.$value,
      message: args[1]?.$value,
      fields: (args[2]!.$reified as List).cast(),
      submitLabel: args[3]?.$value ?? "Confirm",
      cancelLabel: args[4]?.$value ?? "Cancel",
    );
    return $Future.wrap(
      result.then((e) {
        final boxedMap = e.map(
          (key, value) => MapEntry($String(key), $String(value)),
        );
        return $Map.wrap(boxedMap);
      }),
    );
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
