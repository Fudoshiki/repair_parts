import 'address.dart';
import 'notification.dart';
import 'orders.dart';
import 'products.dart';

class RowsOrders {
  String? id;
  int? idInt;
  String? idOrder;
  int? totalPrice;
  dynamic comment;
  String? status;
  dynamic selectedSellerIds;
  String? customerId;
  String? paymentType;
  dynamic paymentId;
  dynamic paymentLink;
  String? payerId;
  int? paidSum;
  String? paymentDate;
  dynamic completionDate;
  bool? hasActiveRefundExchangeRequest;
  String? deliveryAddressId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? lastNotificationCreatedAt;
  List<Order>? orders;
  List<Notifications>? notifications;
  List<dynamic>? unreadNotifications;
  List<Products>? products;
  Address? address;

  RowsOrders({
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
    this.orders,
    this.notifications,
    this.unreadNotifications,
    this.products,
    this.address,
  });

  RowsOrders.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    idOrder = json['idOrder'] as String?;
    totalPrice = json['totalPrice'] as int?;
    comment = json['comment'];
    status = json['status'] as String?;
    selectedSellerIds = json['selectedSellerIds'];
    customerId = json['customerId'] as String?;
    paymentType = json['paymentType'] as String?;
    paymentId = json['paymentId'];
    paymentLink = json['paymentLink'];
    payerId = json['payerId'] as String?;
    paidSum = json['paidSum'] as int?;
    paymentDate = json['paymentDate'] as String?;
    completionDate = json['completionDate'];
    hasActiveRefundExchangeRequest = json['hasActiveRefundExchangeRequest'] as bool?;
    deliveryAddressId = json['deliveryAddressId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    lastNotificationCreatedAt = json['lastNotificationCreatedAt'] as String?;
    orders = (json['orders'] as List?)?.map((dynamic e) => Order.fromJson(e as Map<String,dynamic>)).toList();
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
    json['orders'] = orders?.map((e) => e.toJson()).toList();
    json['notifications'] = notifications?.map((e) => e.toJson()).toList();
    json['unreadNotifications'] = unreadNotifications;
    json['products'] = products?.map((e) => e.toJson()).toList();
    json['address'] = address?.toJson();
    return json;
  }
}
