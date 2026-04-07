import 'package:eval_annotation/eval_annotation.dart';
import 'package:gyawun_metadata_sdk/metadata/models/image.dart';

@Bind()
class User {
  final String id;
  final String name;
  final List<Image> images;
  final String externalUri;

  User({
    required this.id,
    required this.name,
    this.images = const [],
    required this.externalUri,
  });
}
