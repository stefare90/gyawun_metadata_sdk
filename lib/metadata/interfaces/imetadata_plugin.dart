import 'package:gyawun_metadata_sdk/metadata/interfaces.dart';
import 'package:eval_annotation/eval_annotation.dart';

@Bind()
abstract class IMetadataPlugin {
  IArtist get artist;
  IAlbum get album;
  IAuth get auth;
  IBrowse get browse;
  ICore get core;
  IPlaylist get playlist;
  ISearch get search;
  ITrack get track;
  IUser get user;
}
