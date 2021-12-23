import 'rows_auto_types.dart';

class DataAutoTypes {
  int? count;
  List<RowsAutoTypes>? rows;

  DataAutoTypes({
    this.count,
    this.rows,
  });

  DataAutoTypes.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsAutoTypes.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}

