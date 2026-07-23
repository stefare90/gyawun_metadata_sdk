// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/iuser.dart';
import 'package:gyawun_metadata_sdk/metadata/models/album.dart';
import 'package:gyawun_metadata_sdk/metadata/models/artist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/pagination.dart';
import 'package:gyawun_metadata_sdk/metadata/models/playlist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:gyawun_metadata_sdk/eval/models/pagination.eval.dart';

/// dart_eval bridge binding for [IUser]
class $IUser$bridge extends IUser with $Bridge<IUser> {
  /// Forwarded constructor for [IUser.new]
  $IUser$bridge();

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $IUser$bridge();
  }

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($spec.library, 'IUser.', $new, isBridge: true);
  }

  /// Compile-time type specification of [$IUser$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/iuser.dart',
    'IUser',
  );

  /// Compile-time type declaration of [$IUser$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IUser]
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
      'me': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'savedTracks': BridgeMethodDef(
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
          params: [],
        ),
      ),

      'savedAlbums': BridgeMethodDef(
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

      'savedArtists': BridgeMethodDef(
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
                          'package:gyawun_metadata_sdk/metadata/models/artist.dart',
                          'Artist',
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

      'savedPlaylists': BridgeMethodDef(
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
                          'package:gyawun_metadata_sdk/metadata/models/playlist.dart',
                          'Playlist',
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
      case 'me':
        return $Function((runtime, target, args) {
          final result = super.me();
          return $Future.wrap(result.then((e) => $Map.wrap(e)));
        });
      case 'savedTracks':
        return $Function((runtime, target, args) {
          final result = super.savedTracks(
            offset: args[1]?.$value ?? 0,
            limit: args[2]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'savedAlbums':
        return $Function((runtime, target, args) {
          final result = super.savedAlbums(
            offset: args[1]?.$value ?? 0,
            limit: args[2]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'savedArtists':
        return $Function((runtime, target, args) {
          final result = super.savedArtists(
            offset: args[1]?.$value ?? 0,
            limit: args[2]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'savedPlaylists':
        return $Function((runtime, target, args) {
          final result = super.savedPlaylists(
            offset: args[1]?.$value ?? 0,
            limit: args[2]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<Map<String, dynamic>> me() async {
    final result = await $_invoke('me', []);
    if (result == null) return {'user_id': null};
    final Map rawData = (result is $Value)
        ? (result.$value as Map)
        : (result as Map);
    final Map<String, dynamic> finalMap = {};
    rawData.forEach((k, v) {
      final String key = (k is $Value) ? k.$value.toString() : k.toString();
      dynamic value;
      if (v is $Value) {
        value = v.$value;
      } else {
        value = v;
      }
      finalMap[key] = value;
    });
    return finalMap;
  }

  @override
  Future<PaginatedResult<Track>> savedTracks({
    int offset = 0,
    int limit = 20,
  }) async {
    final result = await $_invoke('savedTracks', [$int(offset), $int(limit)]);
    final raw = result as PaginatedResult;

    return PaginatedResult<Track>(
      items: raw.items.cast<Track>(),
      total: raw.total,
      offset: raw.offset,
      limit: raw.limit,
    );
  }

  @override
  Future<PaginatedResult<Album>> savedAlbums({
    int offset = 0,
    int limit = 20,
  }) async {
    final result = await $_invoke('savedAlbums', [$int(offset), $int(limit)]);
    final raw = result as PaginatedResult;

    return PaginatedResult<Album>(
      items: raw.items.cast<Album>(),
      total: raw.total,
      offset: raw.offset,
      limit: raw.limit,
    );
  }

  @override
  Future<PaginatedResult<Artist>> savedArtists({
    int offset = 0,
    int limit = 20,
  }) async {
    final result = await $_invoke('savedArtists', [$int(offset), $int(limit)]);
    final raw = result as PaginatedResult;

    return PaginatedResult<Artist>(
      items: raw.items.cast<Artist>(),
      total: raw.total,
      offset: raw.offset,
      limit: raw.limit,
    );
  }

  @override
  Future<PaginatedResult<Playlist>> savedPlaylists({
    int offset = 0,
    int limit = 20,
  }) async {
    final result = await $_invoke('savedPlaylists', [
      $int(offset),
      $int(limit),
    ]);
    final raw = result as PaginatedResult;

    return PaginatedResult<Playlist>(
      items: raw.items.cast<Playlist>(),
      total: raw.total,
      offset: raw.offset,
      limit: raw.limit,
    );
  }
}
