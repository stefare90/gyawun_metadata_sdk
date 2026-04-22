// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/itrack.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:gyawun_metadata_sdk/eval/models/track.eval.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval bridge binding for [ITrack]
class $ITrack$bridge extends ITrack with $Bridge<ITrack> {
  /// Forwarded constructor for [ITrack.new]
  $ITrack$bridge();

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ITrack$bridge();
  }

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($spec.library, 'ITrack.', $new, isBridge: true);
  }

  /// Compile-time type specification of [$ITrack$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/itrack.dart',
    'ITrack',
  );

  /// Compile-time type declaration of [$ITrack$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ITrack]
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
      'getTrack': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/track.dart',
                    'Track',
                  ),
                  [],
                ),
              ),
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

      'save': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'ids',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'unsave': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'ids',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              false,
            ),
          ],
        ),
      ),

      'radio': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:gyawun_metadata_sdk/metadata/models/track.dart',
                        'Track',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
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
      case 'getTrack':
        return $Function((runtime, target, args) {
          final result = super.getTrack(args[1]!.$value);
          return $Future.wrap(result.then((e) => $Track.wrap(e)));
        });
      case 'save':
        return $Function((runtime, target, args) {
          final result = super.save((args[1]!.$reified as List).cast());
          return $Future.wrap(result.then((e) => null));
        });
      case 'unsave':
        return $Function((runtime, target, args) {
          final result = super.unsave((args[1]!.$reified as List).cast());
          return $Future.wrap(result.then((e) => null));
        });
      case 'radio':
        return $Function((runtime, target, args) {
          final result = super.radio(args[1]!.$value);
          return $Future.wrap(
            result.then((e) => $List.view(e, (e) => $Track.wrap(e))),
          );
        });
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<Track> getTrack(String id) => $_invoke('getTrack', [$String(id)]);

  @override
  Future<void> save(List<String> ids) =>
      $_invoke('save', [$List.view(ids, (e) => $String(e))]);

  @override
  Future<void> unsave(List<String> ids) =>
      $_invoke('unsave', [$List.view(ids, (e) => $String(e))]);

  @override
  Future<List<Track>> radio(String id) => $_invoke('radio', [$String(id)]);
}
