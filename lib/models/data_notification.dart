import 'rows_notification.dart';

class DataNotofication {
  int? count;
  List<RowsNotification>? rows;

  DataNotofication({
    this.count,
    this.rows,
  });

  DataNotofication.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    rows = (json['rows'] as List?)?.map((dynamic e) => RowsNotification.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['rows'] = rows?.map((e) => e.toJson()).toList();
    return json;
  }
}


