import 'package:IGDB_Rest_api/models/PoorCompany..dart';

class Company extends PoorCompany {
  int id;
  String name;
  String url;
  int country;
  String logo;
  String description;

  Company(var company) : super(company) {
    this.url = company['website'];
    this.country = company['country'];
    this.description = company['description'];
    this.logo = company['logo'] ? company['logo']['url'] : null;
  }
}