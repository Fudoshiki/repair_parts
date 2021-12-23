
import 'rows_brand_auto.dart';

class DataBrandAuto {
  int? count;
  List<RowsBrandAuto>? rows;

  DataBrandAuto({
    this.count,
    this.rows,
  });

  DataBrandAuto.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsBrandAuto.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}

