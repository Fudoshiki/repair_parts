import 'rows_favorite.dart';

class DataFavorite {
  int? count;
  List<RowsFavorite>? rows;

  DataFavorite({
    this.count,
    this.rows,
  });

  DataFavorite.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsFavorite.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}

