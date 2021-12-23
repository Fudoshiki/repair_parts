import 'rows_order_request.dart';

class DataOrderRequest {
  int? count;
  List<RowsOrderRequest>? rows;

  DataOrderRequest({
    this.count,
    this.rows,
  });

  DataOrderRequest.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsOrderRequest.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}


