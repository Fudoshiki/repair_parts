import 'package:repair_parts/models/user.dart';

import 'address.dart';
import 'orders.dart';
import 'products.dart';

class DataRefundOrderItem {
  String? id;
  int? idInt;
  String? idOrder;
  int? totalPrice;
  dynamic comment;
  String? status;
  dynamic selectedSellerIds;
  String? customerId;
  String? paymentType;
  String? paymentId;
  String? paymentLink;
  dynamic payerId;
  dynamic paidSum;
  String? paymentDate;
  dynamic completionDate;
  bool? hasActiveRefundExchangeRequest;
  String? deliveryAddressId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  User? customer;
  dynamic payer;
  Address? address;
  dynamic paymentRefundRequest;
  List<dynamic>? orderRequestFiles;
  List<Products>? products;
  List<Order>? orders;
  List<dynamic>? attachments;

  DataRefundOrderItem({
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
    this.customer,
    this.payer,
    this.address,
    this.paymentRefundRequest,
    this.orderRequestFiles,
    this.products,
    this.orders,
    this.attachments,
  });

  DataRefundOrderItem.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    idOrder = json['idOrder'] as String?;
    totalPrice = json['totalPrice'] as int?;
    comment = json['comment'];
    status = json['status'] as String?;
    selectedSellerIds = json['selectedSellerIds'];
    customerId = json['customerId'] as String?;
    paymentType = json['paymentType'] as String?;
    paymentId = json['paymentId'] as String?;
    paymentLink = json['paymentLink'] as String?;
    payerId = json['payerId'];
    paidSum = json['paidSum'];
    paymentDate = json['paymentDate'] as String?;
    completionDate = json['completionDate'];
    hasActiveRefundExchangeRequest = json['hasActiveRefundExchangeRequest'] as bool?;
    deliveryAddressId = json['deliveryAddressId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    customer = (json['customer'] as Map<String,dynamic>?) != null ? User.fromJson(json['customer'] as Map<String,dynamic>) : null;
    payer = json['payer'];
    address = (json['address'] as Map<String,dynamic>?) != null ? Address.fromJson(json['address'] as Map<String,dynamic>) : null;
    paymentRefundRequest = json['paymentRefundRequest'];
    orderRequestFiles = json['orderRequestFiles'] as List?;
    products = (json['products'] as List?)?.map((dynamic e) => Products.fromJson(e as Map<String,dynamic>)).toList();
    orders = (json['orders'] as List?)?.map((dynamic e) => Order.fromJson(e as Map<String,dynamic>)).toList();
    attachments = json['attachments'] as List?;
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
    json['customer'] = customer?.toJson();
    json['payer'] = payer;
    json['address'] = address?.toJson();
    json['paymentRefundRequest'] = paymentRefundRequest;
    json['orderRequestFiles'] = orderRequestFiles;
    json['products'] = products?.map((e) => e.toJson()).toList();
    json['orders'] = orders?.map((e) => e.toJson()).toList();
    json['attachments'] = attachments;
    return json;
  }
}


