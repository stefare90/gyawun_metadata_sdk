import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/image.dart';
import 'package:gyawun_metadata_sdk/metadata/models/user.dart';

@Bind()
class Playlist {
  final String id;
  final String name;
  final String description;
  final String externalUri;
  final User owner;
  final List<Image> images;
  final List<User> collaborators;
  final bool collaborative;
  final bool isPublic;

  Playlist({
    required this.id,
    required this.name,
    required this.description,
    required this.externalUri,
    required this.owner,
    this.images = const [],
    this.collaborators = const [],
    this.collaborative = false,
    this.isPublic = false,
  });
}
