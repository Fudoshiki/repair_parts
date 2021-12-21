import 'package:repair_parts/models/notification_data.dart';

class Notifications {
  String? id;
  int? idInt;
  String? userId;
  String? roleId;
  NotificationData? data;
  String? type;
  String? orderRequestId;
  String? orderId;
  String? viewedAt;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Notifications({
    this.id,
    this.idInt,
    this.userId,
    this.roleId,
    this.data,
    this.type,
    this.orderRequestId,
    this.orderId,
    this.viewedAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Notifications.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    userId = json['userId'] as String?;
    roleId = json['roleId'] as String?;
    data = (json['data'] as Map<String,dynamic>?) != null ? NotificationData.fromJson(json['data'] as Map<String,dynamic>) : null;
    type = json['type'] as String?;
    orderRequestId = json['orderRequestId'] as String?;
    orderId = json['orderId'] as String?;
    viewedAt = json['viewedAt'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['userId'] = userId;
    json['roleId'] = roleId;
    json['data'] = data?.toJson();
    json['type'] = type;
    json['orderRequestId'] = orderRequestId;
    json['orderId'] = orderId;
    json['viewedAt'] = viewedAt;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    return json;
  }
}
