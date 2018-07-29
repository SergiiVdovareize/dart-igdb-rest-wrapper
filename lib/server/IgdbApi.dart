import 'package:IGDB_Rest_api/server/GameResource.dart';
import 'package:rpc/rpc.dart';

@ApiClass(version: 'v1')
class IgdbApi {
  @ApiResource()
  GameResource gameResource = new GameResource();
}
