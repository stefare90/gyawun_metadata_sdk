// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/ibrowse.dart';
import 'package:gyawun_metadata_sdk/metadata/models/pagination.dart';
import 'package:gyawun_metadata_sdk/metadata/models/section.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:gyawun_metadata_sdk/eval/models/pagination.eval.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval bridge binding for [IBrowse]
class $IBrowse$bridge extends IBrowse with $Bridge<IBrowse> {
  /// Forwarded constructor for [IBrowse.new]
  $IBrowse$bridge();

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$IBrowse$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/ibrowse.dart',
    'IBrowse',
  );

  /// Compile-time type declaration of [$IBrowse$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IBrowse]
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
      'sections': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/pagination.dart',
                    'PaginatedResult',
                  ),
                  [
                    BridgeTypeAnnotation(
                      BridgeTypeRef(
                        BridgeTypeSpec(
                          'package:gyawun_metadata_sdk/metadata/models/section.dart',
                          'Section',
                        ),
                        [],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'limit',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),
          ],
          params: [],
        ),
      ),

      'sectionItems': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/pagination.dart',
                    'PaginatedResult',
                  ),
                  [BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic))],
                ),
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'limit',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
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
      case 'sections':
        return $Function((runtime, target, args) {
          final result = super.sections(
            offset: args[1]?.$value ?? 0,
            limit: args[2]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'sectionItems':
        return $Function((runtime, target, args) {
          final result = super.sectionItems(
            args[1]!.$value,
            offset: args[2]?.$value ?? 0,
            limit: args[3]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<PaginatedResult<Section>> sections({int offset = 0, int limit = 20}) =>
      $_invoke('sections', [$int(offset), $int(limit)]);

  @override
  Future<PaginatedResult<dynamic>> sectionItems(
    String id, {
    int offset = 0,
    int limit = 20,
  }) => $_invoke('sectionItems', [$String(id), $int(offset), $int(limit)]);
}
