import 'package:http/http.dart' as http;
import 'dart:convert';

final String KEY = 'e4963fbc89fe5b21579a778dcfdd7622';

class DataFetcher {
  Map<String, String> headers = new Map();
  String baseUrl = 'https://api-endpoint.igdb.com';

  DataFetcher() {  
    headers['user-key'] = KEY;
    headers['Accept'] = 'application/json';
  }

  fetch(String resource) {
    String path = '${baseUrl}/${resource}';
    return http.get(path, headers: headers)
      .then((response) {
        return JSON.decode(response.body);
      });
  }
}