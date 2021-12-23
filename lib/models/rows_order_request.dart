import 'address.dart';
import 'notification.dart';
import 'products.dart';

class RowsOrderRequest {
  String? id;
  int? idInt;
  String? idOrder;
  dynamic totalPrice;
  dynamic comment;
  String? status;
  String? selectedSellerIds;
  String? customerId;
  dynamic paymentType;
  dynamic paymentId;
  dynamic paymentLink;
  dynamic payerId;
  dynamic paidSum;
  dynamic paymentDate;
  dynamic completionDate;
  bool? hasActiveRefundExchangeRequest;
  String? deliveryAddressId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? lastNotificationCreatedAt;
  String? lastNotificationViewedAt;
  List<dynamic>? orders;
  List<Notifications>? notifications;
  List<dynamic>? unreadNotifications;
  List<Products>? products;
  Address? address;

  RowsOrderRequest({
    this.id,
    this.idInt,
    this.idOrder,
    this.totalPrice,
    this.comment,
    this.status,
    this.selectedSellerIds,
    this.customerId,
    this.paymentType,
    this.paymentId,
    this.paymentLink,
    this.payerId,
    this.paidSum,
    this.paymentDate,
    this.completionDate,
    this.hasActiveRefundExchangeRequest,
    this.deliveryAddressId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.lastNotificationCreatedAt,
    this.lastNotificationViewedAt,
    this.orders,
    this.notifications,
    this.unreadNotifications,
    this.products,
    this.address,
  });

  RowsOrderRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    idOrder = json['idOrder'] as String?;
    totalPrice = json['totalPrice'];
    comment = json['comment'];
    status = json['status'] as String?;
    selectedSellerIds = json['selectedSellerIds'] as String?;
    customerId = json['customerId'] as String?;
    paymentType = json['paymentType'];
    paymentId = json['paymentId'];
    paymentLink = json['paymentLink'];
    payerId = json['payerId'];
    paidSum = json['paidSum'];
    paymentDate = json['paymentDate'];
    completionDate = json['completionDate'];
    hasActiveRefundExchangeRequest = json['hasActiveRefundExchangeRequest'] as bool?;
    deliveryAddressId = json['deliveryAddressId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    lastNotificationCreatedAt = json['lastNotificationCreatedAt'] as String?;
    lastNotificationViewedAt = json['lastNotificationViewedAt'] as String?;
    orders = json['orders'] as List?;
    notifications = (json['notifications'] as List?)?.map((dynamic e) => Notifications.fromJson(e as Map<String,dynamic>)).toList();
    unreadNotifications = json['unreadNotifications'] as List?;
    products = (json['products'] as List?)?.map((dynamic e) => Products.fromJson(e as Map<String,dynamic>)).toList();
    address = (json['address'] as Map<String,dynamic>?) != null ? Address.fromJson(json['address'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['idOrder'] = idOrder;
    json['totalPrice'] = totalPrice;
    json['comment'] = comment;
    json['status'] = status;
    json['selectedSellerIds'] = selectedSellerIds;
    json['customerId'] = customerId;
    json['paymentType'] = paymentType;
    json['paymentId'] = paymentId;
    json['paymentLink'] = paymentLink;
    json['payerId'] = payerId;
    json['paidSum'] = paidSum;
    json['paymentDate'] = paymentDate;
    json['completionDate'] = completionDate;
    json['hasActiveRefundExchangeRequest'] = hasActiveRefundExchangeRequest;
    json['deliveryAddressId'] = deliveryAddressId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['lastNotificationCreatedAt'] = lastNotificationCreatedAt;
    json['lastNotificationViewedAt'] = lastNotificationViewedAt;
    json['orders'] = orders;
    json['notifications'] = notifications?.map((e) => e.toJson()).toList();
    json['unreadNotifications'] = unreadNotifications;
    json['products'] = products?.map((e) => e.toJson()).toList();
    json['address'] = address?.toJson();
    return json;
  }
}
