// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import '../../metadata/interfaces/imetadata_plugin.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/ialbum.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iartist.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iauth.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/ibrowse.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/icore.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iplaylist.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/isearch.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/itrack.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iuser.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iartist.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/ialbum.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iauth.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/ibrowse.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/icore.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iplaylist.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/isearch.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/itrack.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iuser.eval.dart';

/// dart_eval bridge binding for [IMetadataPlugin]
class $IMetadataPlugin$bridge extends IMetadataPlugin
    with $Bridge<IMetadataPlugin> {
  /// Forwarded constructor for [IMetadataPlugin.new]
  $IMetadataPlugin$bridge();

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $IMetadataPlugin$bridge();
  }

  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      $spec.library,
      'IMetadataPlugin.',
      $new,
      isBridge: true,
    );
  }

  /// Compile-time type specification of [$IMetadataPlugin$bridge]
  static const $spec = BridgeTypeSpec(
    'package:gyawun_metadata_sdk/metadata/interfaces/imetadata_plugin.dart',
    'IMetadataPlugin',
  );

  /// Compile-time type declaration of [$IMetadataPlugin$bridge]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$IMetadataPlugin]
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

    methods: {},
    getters: {
      'artist': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/iartist.dart',
                'IArtist',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'album': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/ialbum.dart',
                'IAlbum',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'auth': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/iauth.dart',
                'IAuth',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'browse': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/ibrowse.dart',
                'IBrowse',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'core': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/icore.dart',
                'ICore',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'playlist': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/iplaylist.dart',
                'IPlaylist',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'search': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/isearch.dart',
                'ISearch',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'track': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/itrack.dart',
                'ITrack',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),

      'user': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'package:gyawun_metadata_sdk/metadata/interfaces/iuser.dart',
                'IUser',
              ),
              [],
            ),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: false,
    bridge: true,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'artist':
        final _artist = super.artist;
        return _artist as $Instance;

      case 'album':
        final _album = super.album;
        return _album as $Instance;

      case 'auth':
        final _auth = super.auth;
        return _auth as $Instance;

      case 'browse':
        final _browse = super.browse;
        return _browse as $Instance;
      case 'core':
        final _core = super.core;
        return _core as $Instance;

      case 'playlist':
        final _playlist = super.playlist;
        return _playlist as $Instance;

      case 'search':
        final _search = super.search;
        return _search as $Instance;

      case 'track':
        final _track = super.track;
        return _track as $Instance;

      case 'user':
        final _user = super.user;
        return _user as $Instance;
    }
    return null;
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}

  @override
  IArtist get artist => $_get('artist');

  @override
  IAlbum get album => $_get('album');

  @override
  IAuth get auth => $_get('auth');

  @override
  IBrowse get browse => $_get('browse');

  @override
  ICore get core => $_get('core');

  @override
  IPlaylist get playlist => $_get('playlist');

  @override
  ISearch get search => $_get('search');

  @override
  ITrack get track => $_get('track');

  @override
  IUser get user => $_get('user');
}
