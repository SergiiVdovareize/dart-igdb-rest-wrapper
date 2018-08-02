import 'package:IGDB_Rest_api/fetcher/datafetcher.dart';
import 'package:IGDB_Rest_api/models/PoorGame.dart';
import 'package:IGDB_Rest_api/models/Game.dart';
import 'package:IGDB_Rest_api/server/MyRequest.dart';
import 'package:rpc/rpc.dart';
import 'dart:async';

class GameResource {
  List games = [];
  DataFetcher fetcher = new DataFetcher(); 
  
  @ApiMethod(path: 'search/{term}')
  Future<List<PoorGame>> searchGamesLimited(String term, {int limit = 10}) async {
    if (limit < 1 || limit > 10) {
      limit = 10;
    }
    String path = 'games/?search=${term}&limit=${limit}&fields=*';
    var games = await fetcher.fetch(path);
    List result = new List();
    for (var game in games) {
      result.add(new PoorGame(game));
    }
    return result;
  }

  @ApiMethod(path: 'game/{id}')
  Future<Game> getGame(int id) async {
    String path = 'games/${id}?fields=*';
    var games = await fetcher.fetch(path);
    return new Game(games[0]);
  }
}