import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:gyawun_metadata_sdk/eval/host_env.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/track.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/pagination.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/playlist.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/artist.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/section.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/search.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/form_input_field.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/browse_section.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/album.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/plugin_response.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/user.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/image.eval.dart';
import 'package:gyawun_metadata_sdk/eval/models/plugin_request.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/itrack.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iplaylist.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/ialbum.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iuser.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/isearch.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/icore.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iui_service.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/inetwork_service.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/ibrowse.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iartist.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/iauth.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/istorage_service.eval.dart';
import 'package:gyawun_metadata_sdk/eval/interfaces/imetadata_plugin.eval.dart';

/// [EvalPlugin] for gyawun_metadata_sdk
class GyawunMetadataSdkPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:gyawun_metadata_sdk';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($HostEnv.$declaration);
    registry.defineBridgeClass($Track.$declaration);
    registry.defineBridgeClass($PaginatedResult.$declaration);
    registry.defineBridgeClass($Playlist.$declaration);
    registry.defineBridgeClass($Artist.$declaration);
    registry.defineBridgeClass($Section.$declaration);
    registry.defineBridgeClass($SearchResponse.$declaration);
    registry.defineBridgeClass($FormInputField.$declaration);
    registry.defineBridgeClass($BrowseSection.$declaration);
    registry.defineBridgeClass($Album.$declaration);
    registry.defineBridgeClass($PluginResponse.$declaration);
    registry.defineBridgeClass($User.$declaration);
    registry.defineBridgeClass($Image.$declaration);
    registry.defineBridgeClass($PluginRequest.$declaration);
    registry.defineBridgeClass($ITrack$bridge.$declaration);
    registry.defineBridgeClass($IPlaylist$bridge.$declaration);
    registry.defineBridgeClass($IAlbum$bridge.$declaration);
    registry.defineBridgeClass($IUser$bridge.$declaration);
    registry.defineBridgeClass($ISearch$bridge.$declaration);
    registry.defineBridgeClass($IUIService.$declaration);
    registry.defineBridgeClass($ICore$bridge.$declaration);
    registry.defineBridgeClass($INetworkService.$declaration);
    registry.defineBridgeClass($IBrowse$bridge.$declaration);
    registry.defineBridgeClass($IArtist$bridge.$declaration);
    registry.defineBridgeClass($IStorageService.$declaration);
    registry.defineBridgeClass($IAuth$bridge.$declaration);
    registry.defineBridgeClass($IMetadataPlugin$bridge.$declaration);
    registry.defineBridgeEnum($AlbumType.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $HostEnv.configureForRuntime(runtime);
    $Track.configureForRuntime(runtime);
    $PaginatedResult.configureForRuntime(runtime);
    $Playlist.configureForRuntime(runtime);
    $Artist.configureForRuntime(runtime);
    $Section.configureForRuntime(runtime);
    $SearchResponse.configureForRuntime(runtime);
    $FormInputField.configureForRuntime(runtime);
    $BrowseSection.configureForRuntime(runtime);
    $Album.configureForRuntime(runtime);
    $PluginResponse.configureForRuntime(runtime);
    $User.configureForRuntime(runtime);
    $Image.configureForRuntime(runtime);
    $PluginRequest.configureForRuntime(runtime);
    $ITrack$bridge.configureForRuntime(runtime);
    $IPlaylist$bridge.configureForRuntime(runtime);
    $IAlbum$bridge.configureForRuntime(runtime);
    $IUser$bridge.configureForRuntime(runtime);
    $ISearch$bridge.configureForRuntime(runtime);
    $IUIService.configureForRuntime(runtime);
    $ICore$bridge.configureForRuntime(runtime);
    $INetworkService.configureForRuntime(runtime);
    $IBrowse$bridge.configureForRuntime(runtime);
    $IArtist$bridge.configureForRuntime(runtime);
    $IStorageService.configureForRuntime(runtime);
    $IAuth$bridge.configureForRuntime(runtime);
    $IMetadataPlugin$bridge.configureForRuntime(runtime);
    $AlbumType.configureForRuntime(runtime);
  }
}
