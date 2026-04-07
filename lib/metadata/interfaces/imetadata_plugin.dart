import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/ialbum.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iartist.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iauth.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/ibrowse.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/icore.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iplaylist.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/isearch.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/itrack.dart';
import 'package:gyawun_metadata_sdk/metadata/interfaces/iuser.dart';

@Bind(bridge: true)
abstract class IMetadataPlugin {
  IArtist get artist {
    // TODO: implement artist
    throw UnimplementedError();
  }

  IAlbum get album {
    // TODO: implement album
    throw UnimplementedError();
  }

  IAuth get auth {
    // TODO: implement auth
    throw UnimplementedError();
  }

  IBrowse get browse {
    // TODO: implement browse
    throw UnimplementedError();
  }

  ICore get core {
    // TODO: implement core
    throw UnimplementedError();
  }

  IPlaylist get playlist {
    // TODO: implement playlist
    throw UnimplementedError();
  }

  ISearch get search {
    // TODO: implement search
    throw UnimplementedError();
  }

  ITrack get track {
    // TODO: implement track
    throw UnimplementedError();
  }

  IUser get user {
    // TODO: implement user
    throw UnimplementedError();
  }
}
