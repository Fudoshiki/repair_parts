import 'rows_orders.dart';

class DataOrders {
  int? count;
  List<RowsOrders>? rows;

  DataOrders({
    this.count,
    this.rows,
  });

  DataOrders.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsOrders.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}








