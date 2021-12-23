import 'package:repair_parts/models/rows_refund_exchange.dart';

class DataRefundExchange {
  int? count;
  List<RowsRefundExchange>? rows;

  DataRefundExchange({
    this.count,
    this.rows,
  });

  DataRefundExchange.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsRefundExchange.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}







