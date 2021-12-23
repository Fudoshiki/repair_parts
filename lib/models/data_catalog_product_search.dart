import 'rows_products.dart';

class DataCatalogProductSearch {
  int? count;
  List<RowsProducts>? rows;

  DataCatalogProductSearch({
    this.count,
    this.rows,
  });

  DataCatalogProductSearch.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsProducts.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}

