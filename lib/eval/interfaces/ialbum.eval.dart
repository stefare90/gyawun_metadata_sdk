// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/ialbum.dart';
import 'package:gyawun_metadata_sdk/metadata/models/album.dart';
import 'package:gyawun_metadata_sdk/metadata/models/pagination.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:gyawun_metadata_sdk/eval/models/album.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/pagination.eval.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval bridge binding for [IAlbum]
class $IAlbum$bridge extends IAlbum with $Bridge<IAlbum> {
  /// Forwarded constructor for [IAlbum.new]
  $IAlbum$bridge();

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $IAlbum$bridge();
  }

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($spec.library, 'IAlbum.', $new, isBridge: true);
  }

  /// Compile-time type specification of [$IAlbum$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/ialbum.dart',
    'IAlbum',
  );

  /// Compile-time type declaration of [$IAlbum$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IAlbum]
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
      'getAlbum': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/album.dart',
                    'Album',
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

      'tracks': BridgeMethodDef(
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
                          'package:gyawun_metadata_sdk/metadata/models/track.dart',
                          'Track',
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
          params: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'releases': BridgeMethodDef(
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
                          'package:gyawun_metadata_sdk/metadata/models/album.dart',
                          'Album',
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
      case 'getAlbum':
        return $Function((runtime, target, args) {
          final result = super.getAlbum(args[1]!.$value);
          return $Future.wrap(result.then((e) => $Album.wrap(e)));
        });
      case 'tracks':
        return $Function((runtime, target, args) {
          final result = super.tracks(
            args[1]!.$value,
            offset: args[2]?.$value ?? 0,
            limit: args[3]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'releases':
        return $Function((runtime, target, args) {
          final result = super.releases(
            offset: args[1]?.$value ?? 0,
            limit: args[2]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
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
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<Album> getAlbum(String id) async =>
      await $_invoke('getAlbum', [$String(id)]);

  @override
  Future<PaginatedResult<Track>> tracks(
    String id, {
    int offset = 0,
    int limit = 20,
  }) => $_invoke('tracks', [$String(id), $int(offset), $int(limit)]);

  @override
  Future<PaginatedResult<Album>> releases({int offset = 0, int limit = 20}) =>
      $_invoke('releases', [$int(offset), $int(limit)]);

  @override
  Future<void> save(List<String> ids) =>
      $_invoke('save', [$List.view(ids, (e) => $String(e))]);

  @override
  Future<void> unsave(List<String> ids) =>
      $_invoke('unsave', [$List.view(ids, (e) => $String(e))]);
}
