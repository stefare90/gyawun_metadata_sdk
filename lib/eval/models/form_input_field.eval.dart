// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/models/form_input_field.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [FormInputField]
class $FormInputField implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:gyawun_metadata_sdk/metadata/models/form_input_field.dart',
      'FormInputField.',
      $FormInputField.$new,
    );
  }

  /// Compile-time type specification of [$FormInputField]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/models/form_input_field.dart',
    'FormInputField',
  );

  /// Compile-time type declaration of [$FormInputField]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FormInputField]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'label',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'isPassword',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'placeholder',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'defaultValue',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
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
      'id': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'label': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'isPassword': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'placeholder': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'defaultValue': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FormInputField.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FormInputField.wrap(
      FormInputField(
        id: args[0]!.$value,
        label: args[1]!.$value,
        isPassword: args[2]?.$value ?? false,
        placeholder: args[3]?.$value,
        defaultValue: args[4]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FormInputField $value;

  @override
  FormInputField get $reified => $value;

  /// Wrap a [FormInputField] in a [$FormInputField]
  $FormInputField.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'id':
        final _id = $value.id;
        return $String(_id);

      case 'label':
        final _label = $value.label;
        return $String(_label);

      case 'isPassword':
        final _isPassword = $value.isPassword;
        return $bool(_isPassword);

      case 'placeholder':
        final _placeholder = $value.placeholder;
        return _placeholder == null ? const $null() : $String(_placeholder);

      case 'defaultValue':
        final _defaultValue = $value.defaultValue;
        return _defaultValue == null ? const $null() : $String(_defaultValue);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
