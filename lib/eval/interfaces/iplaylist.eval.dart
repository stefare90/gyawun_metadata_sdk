// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/iplaylist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/pagination.dart';
import 'package:gyawun_metadata_sdk/metadata/models/playlist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:gyawun_metadata_sdk/eval/models/pagination.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/playlist.eval.dart';

/// dart_eval bridge binding for [IPlaylist]
class $IPlaylist$bridge extends IPlaylist with $Bridge<IPlaylist> {
  /// Forwarded constructor for [IPlaylist.new]
  $IPlaylist$bridge();

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $IPlaylist$bridge();
  }

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      $spec.library,
      'IPlaylist.',
      $new,
      isBridge: true,
    );
  }

  /// Compile-time type specification of [$IPlaylist$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/iplaylist.dart',
    'IPlaylist',
  );

  /// Compile-time type declaration of [$IPlaylist$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IPlaylist]
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
      'getPlaylist': BridgeMethodDef(
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

      'createPlaylist': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/playlist.dart',
                    'Playlist',
                  ),
                  [],
                ),
                nullable: true,
              ),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'description',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'public_',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'collaborative',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'userId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'name',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'updatePlaylist': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'name',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'description',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'public_',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'collaborative',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.bool, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'playlistId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'deletePlaylist': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'playlistId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'addTracks': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [
            BridgeParameter(
              'position',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'playlistId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'trackIds',
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

      'removeTracks': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'playlistId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'trackIds',
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
              'playlistId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
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
              'playlistId',
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
      case 'getPlaylist':
        return $Function((runtime, target, args) {
          final result = super.getPlaylist(args[1]!.$value);
          return $Future.wrap(result.then((e) => $Playlist.wrap(e)));
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
      case 'createPlaylist':
        return $Function((runtime, target, args) {
          final result = super.createPlaylist(
            args[1]!.$value,
            args[2]!.$value,
            description: args[3]?.$value,
            public_: args[4]?.$value,
            collaborative: args[5]?.$value,
          );
          return $Future.wrap(
            result.then((e) => e == null ? const $null() : $Playlist.wrap(e)),
          );
        });
      case 'updatePlaylist':
        return $Function((runtime, target, args) {
          final result = super.updatePlaylist(
            args[1]!.$value,
            name: args[2]?.$value,
            description: args[3]?.$value,
            public_: args[4]?.$value,
            collaborative: args[5]?.$value,
          );
          return $Future.wrap(result.then((e) => null));
        });
      case 'deletePlaylist':
        return $Function((runtime, target, args) {
          final result = super.deletePlaylist(args[1]!.$value);
          return $Future.wrap(result.then((e) => null));
        });
      case 'addTracks':
        return $Function((runtime, target, args) {
          final result = super.addTracks(
            args[1]!.$value,
            (args[2]!.$reified as List).cast(),
            position: args[3]?.$value,
          );
          return $Future.wrap(result.then((e) => null));
        });
      case 'removeTracks':
        return $Function((runtime, target, args) {
          final result = super.removeTracks(
            args[1]!.$value,
            (args[2]!.$reified as List).cast(),
          );
          return $Future.wrap(result.then((e) => null));
        });
      case 'save':
        return $Function((runtime, target, args) {
          final result = super.save(args[1]!.$value);
          return $Future.wrap(result.then((e) => null));
        });
      case 'unsave':
        return $Function((runtime, target, args) {
          final result = super.unsave(args[1]!.$value);
          return $Future.wrap(result.then((e) => null));
        });
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  Future<Playlist> getPlaylist(String id) async {
    final result = await $_invoke('getPlaylist', [$String(id)]);
    return result as Playlist;
  }

  @override
  Future<PaginatedResult<Track>> tracks(
    String id, {
    int offset = 0,
    int limit = 20,
  }) async {
    final result = await $_invoke('tracks', [
      $String(id),
      $int(offset),
      $int(limit),
    ]);
    final raw = result as PaginatedResult;
    return PaginatedResult<Track>(
      items: raw.items.cast<Track>(),
      total: raw.total,
      offset: raw.offset,
      limit: raw.limit,
    );
  }

  @override
  Future<Playlist?> createPlaylist(
    String userId,
    String name, {
    String? description,
    bool? public_,
    bool? collaborative,
  }) async {
    final result = await $_invoke('createPlaylist', [
      $String(userId),
      $String(name),
      description == null ? const $null() : $String(description),
      public_ == null ? const $null() : $bool(public_),
      collaborative == null ? const $null() : $bool(collaborative),
    ]);
    return result as Playlist?;
  }

  @override
  Future<void> updatePlaylist(
    String playlistId, {
    String? name,
    String? description,
    bool? public_,
    bool? collaborative,
  }) async {
    await $_invoke('updatePlaylist', [
      $String(playlistId),
      name == null ? const $null() : $String(name),
      description == null ? const $null() : $String(description),
      public_ == null ? const $null() : $bool(public_),
      collaborative == null ? const $null() : $bool(collaborative),
    ]);
  }

  @override
  Future<void> deletePlaylist(String playlistId) async {
    await $_invoke('deletePlaylist', [$String(playlistId)]);
  }

  @override
  Future<void> addTracks(
    String playlistId,
    List<String> trackIds, {
    int? position,
  }) async {
    await $_invoke('addTracks', [
      $String(playlistId),
      $List.view(trackIds, (e) => $String(e)),
      position == null ? const $null() : $int(position),
    ]);
  }

  @override
  Future<void> removeTracks(String playlistId, List<String> trackIds) async {
    await $_invoke('removeTracks', [
      $String(playlistId),
      $List.view(trackIds, (e) => $String(e)),
    ]);
  }

  @override
  Future<void> save(String playlistId) async {
    await $_invoke('save', [$String(playlistId)]);
  }

  @override
  Future<void> unsave(String playlistId) async {
    await $_invoke('unsave', [$String(playlistId)]);
  }
}
