import 'rows_cart_products.dart';

class DataCartProducts {
  int? count;
  List<RowsCartProducts>? rows;

  DataCartProducts({
    this.count,
    this.rows,
  });

  DataCartProducts.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsCartProducts.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}


