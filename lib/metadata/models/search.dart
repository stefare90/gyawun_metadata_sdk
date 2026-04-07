import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/album.dart';
import 'package:gyawun_metadata_sdk/metadata/models/artist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/playlist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';

@Bind()
class SearchResponse {
  final List<Album> albums;
  final List<Artist> artists;
  final List<Playlist> playlists;
  final List<Track> tracks;

  SearchResponse({
    required this.albums,
    required this.artists,
    required this.playlists,
    required this.tracks,
  });
}
