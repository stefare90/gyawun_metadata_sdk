import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/album.dart';
import 'package:gyawun_metadata_sdk/metadata/models/artist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/pagination.dart';
import 'package:gyawun_metadata_sdk/metadata/models/playlist.dart';
import 'package:gyawun_metadata_sdk/metadata/models/search.dart';
import 'package:gyawun_metadata_sdk/metadata/models/track.dart';

@Bind(bridge: true)
abstract class ISearch {
  List<String> chips() {
    throw Exception('Method not implemented.');
  }

  Future<SearchResponse> all(String query) {
    throw Exception('Method not implemented.');
  }

  Future<PaginatedResult<Track>> tracks(
    String query, {
    int offset = 0,
    int limit = 20,
  }) {
    throw Exception('Method not implemented.');
  }

  Future<PaginatedResult<Album>> albums(
    String query, {
    int offset = 0,
    int limit = 20,
  }) {
    throw Exception('Method not implemented.');
  }

  Future<PaginatedResult<Artist>> artists(
    String query, {
    int offset = 0,
    int limit = 20,
  }) {
    throw Exception('Method not implemented.');
  }

  Future<PaginatedResult<Playlist>> playlists(
    String query, {
    int offset = 0,
    int limit = 20,
  }) {
    throw Exception('Method not implemented.');
  }
}
