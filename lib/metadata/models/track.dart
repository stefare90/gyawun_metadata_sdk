import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/album.dart';
import 'package:gyawun_metadata_sdk/metadata/models/artist.dart';

@Bind()
class Track {
  final String id;
  final String name;
  final String externalUri;
  final List<Artist> artists;
  final Album album;
  final int durationMs;
  final String? path;

  Track({
    required this.id,
    required this.name,
    required this.externalUri,
    required this.artists,
    required this.album,
    required this.durationMs,
    this.path,
  });
}
