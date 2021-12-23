import 'rows_sellers.dart';

class DataSellers {
  int? count;
  List<RowsSellers>? rows;

  DataSellers({
    this.count,
    this.rows,
  });

  DataSellers.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsSellers.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}


