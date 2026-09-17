// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:gyawun_metadata_sdk/eval/eval_unboxer.dart';
import '../../metadata/interfaces/isearch.dart';
import 'package:gyawun_metadata_sdk/metadata/models/album.dart';
import 'package:gyawun_metadata_sdk/metadata/models/artist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/pagination.dart';
import 'package:gyawun_metadata_sdk/metadata/models/playlist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/search.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:gyawun_metadata_sdk/eval/models/search.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/pagination.eval.dart';

/// dart_eval bridge binding for [ISearch]
class $ISearch$bridge extends ISearch with $Bridge<ISearch> {
  /// Forwarded constructor for [ISearch.new]
  $ISearch$bridge();

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ISearch$bridge();
  }

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($spec.library, 'ISearch.', $new, isBridge: true);
  }

  /// Compile-time type specification of [$ISearch$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/isearch.dart',
    'ISearch',
  );

  /// Compile-time type declaration of [$ISearch$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ISearch]
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
      'chips': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/search.dart',
                    'SearchCategory',
                  ),
                  [],
                ),
              ),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'all': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:gyawun_metadata_sdk/metadata/models/search.dart',
                    'SearchResponse',
                  ),
                  [],
                ),
              ),
            ]),
          ),
          namedParams: [],
          params: [
            BridgeParameter(
              'query',
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
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'albums': BridgeMethodDef(
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
          params: [
            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'artists': BridgeMethodDef(
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
          params: [
            BridgeParameter(
              'query',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),
          ],
        ),
      ),

      'playlists': BridgeMethodDef(
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
          params: [
            BridgeParameter(
              'query',
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
      case 'chips':
        return $Function((runtime, target, args) {
          final result = super.chips();
          return $List.view(result, (e) => $SearchCategory.wrap(e));
        });
      case 'all':
        return $Function((runtime, target, args) {
          final result = super.all(args[1]!.$value);
          return $Future.wrap(result.then((e) => $SearchResponse.wrap(e)));
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
      case 'albums':
        return $Function((runtime, target, args) {
          final result = super.albums(
            args[1]!.$value,
            offset: args[2]?.$value ?? 0,
            limit: args[3]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'artists':
        return $Function((runtime, target, args) {
          final result = super.artists(
            args[1]!.$value,
            offset: args[2]?.$value ?? 0,
            limit: args[3]?.$value ?? 20,
          );
          return $Future.wrap(result.then((e) => $PaginatedResult.wrap(e)));
        });
      case 'playlists':
        return $Function((runtime, target, args) {
          final result = super.playlists(
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
  List<SearchCategory> chips() {
    try {
      final result = $_invoke('chips', []);
      final unboxed = unboxValue(result) as List;
      return unboxed.map((e) => unboxValue(e) as SearchCategory).toList();
    } catch (e, st) {
      throw unboxException(e, st);
    }
  }

  @override
  Future<SearchResponse> all(String query) async {
    try {
      final result = await $_invoke('all', [$String(query)]);
      return unboxValue(result) as SearchResponse;
    } catch (e, st) {
      throw unboxException(e, st);
    }
  }

  @override
  Future<PaginatedResult<Track>> tracks(
    String query, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final result = await $_invoke('tracks', [
        $String(query),
        $int(offset),
        $int(limit),
      ]);
      final raw = unboxValue(result) as PaginatedResult;
      final unboxedItems = raw.items
          .map((e) => unboxValue(e) as Track)
          .toList();
      return PaginatedResult<Track>(
        items: unboxedItems,
        total: raw.total,
        offset: raw.offset,
        limit: raw.limit,
      );
    } catch (e, st) {
      throw unboxException(e, st);
    }
  }

  @override
  Future<PaginatedResult<Album>> albums(
    String query, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final result = await $_invoke('albums', [
        $String(query),
        $int(offset),
        $int(limit),
      ]);
      final raw = unboxValue(result) as PaginatedResult;
      final unboxedItems = raw.items
          .map((e) => unboxValue(e) as Album)
          .toList();
      return PaginatedResult<Album>(
        items: unboxedItems,
        total: raw.total,
        offset: raw.offset,
        limit: raw.limit,
      );
    } catch (e, st) {
      throw unboxException(e, st);
    }
  }

  @override
  Future<PaginatedResult<Artist>> artists(
    String query, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final result = await $_invoke('artists', [
        $String(query),
        $int(offset),
        $int(limit),
      ]);
      final raw = unboxValue(result) as PaginatedResult;
      final unboxedItems = raw.items
          .map((e) => unboxValue(e) as Artist)
          .toList();
      return PaginatedResult<Artist>(
        items: unboxedItems,
        total: raw.total,
        offset: raw.offset,
        limit: raw.limit,
      );
    } catch (e, st) {
      throw unboxException(e, st);
    }
  }

  @override
  Future<PaginatedResult<Playlist>> playlists(
    String query, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final result = await $_invoke('playlists', [
        $String(query),
        $int(offset),
        $int(limit),
      ]);
      final raw = unboxValue(result) as PaginatedResult;
      final unboxedItems = raw.items
          .map((e) => unboxValue(e) as Playlist)
          .toList();
      return PaginatedResult<Playlist>(
        items: unboxedItems,
        total: raw.total,
        offset: raw.offset,
        limit: raw.limit,
      );
    } catch (e, st) {
      throw unboxException(e, st);
    }
  }
}
