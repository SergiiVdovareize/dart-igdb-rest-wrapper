import 'package:IGDB_Rest_api/fetcher/datafetcher.dart';
import 'package:IGDB_Rest_api/models/Company.dart';
import 'package:rpc/rpc.dart';
import 'dart:async';

class CompanyResource {
  DataFetcher fetcher = new DataFetcher(); 
  
  @ApiMethod(path: 'company/{id}')
  Future<Company> getCompany(int id) async {
    String path = 'companies/${id}?fields=*';
    var companies = await fetcher.fetch(path);
    print(companies[0]);
    return new Company(companies[0]);
  }
}