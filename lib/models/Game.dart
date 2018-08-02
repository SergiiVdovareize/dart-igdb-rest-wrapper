import 'package:IGDB_Rest_api/models/PoorGame.dart';

class Game extends PoorGame {
  int id;
  String name;
  String url;
  double rating;

  Game(var game) : super(game) {
    this.url = game['website'];
    this.rating = game['rating'];
  }
}