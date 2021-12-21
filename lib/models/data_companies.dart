import 'rows_companies.dart';

class DataCompanies {
  int? count;
  List<RowsCompanies>? rows;

  DataCompanies({
    this.count,
    this.rows,
  });

  DataCompanies.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsCompanies.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}



