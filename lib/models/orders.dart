import 'notification.dart';
import 'organization.dart';
import 'products.dart';
import 'reward.dart';
import 'seller.dart';

class Order {
  String? id;
  int? idInt;
  int? totalPrice;
  String? sellerId;
  String? orderRequestId;
  String? organizationId;
  bool? isPickup;
  dynamic transportCompanyId;
  dynamic trackNumber;
  dynamic departureDate;
  dynamic receivingDate;
  dynamic completionDate;
  String? seenAt;
  dynamic sellerUpdatedAt;
  String? offerExpiresAt;
  bool? hasActiveRefundExchangeRequest;
  bool? isExpiredOffer;
  bool? isRequestedToUpdateOffer;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<Notifications>? notifications;
  List<dynamic>? unreadNotifications;
  List<Products>? products;
  Organization? organization;
  Seller? seller;
  dynamic transportCompany;
  Reward? reward;

  Order({
    this.id,
    this.idInt,
    this.totalPrice,
    this.sellerId,
    this.orderRequestId,
    this.organizationId,
    this.isPickup,
    this.transportCompanyId,
    this.trackNumber,
    this.departureDate,
    this.receivingDate,
    this.completionDate,
    this.seenAt,
    this.sellerUpdatedAt,
    this.offerExpiresAt,
    this.hasActiveRefundExchangeRequest,
    this.isExpiredOffer,
    this.isRequestedToUpdateOffer,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.notifications,
    this.unreadNotifications,
    this.products,
  });

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    totalPrice = json['totalPrice'] as int?;
    sellerId = json['sellerId'] as String?;
    orderRequestId = json['orderRequestId'] as String?;
    organizationId = json['organizationId'] as String?;
    isPickup = json['isPickup'] as bool?;
    transportCompanyId = json['transportCompanyId'];
    trackNumber = json['trackNumber'];
    departureDate = json['departureDate'];
    receivingDate = json['receivingDate'];
    completionDate = json['completionDate'];
    seenAt = json['seenAt'] as String?;
    sellerUpdatedAt = json['sellerUpdatedAt'];
    offerExpiresAt = json['offerExpiresAt'] as String?;
    hasActiveRefundExchangeRequest = json['hasActiveRefundExchangeRequest'] as bool?;
    isExpiredOffer = json['isExpiredOffer'] as bool?;
    isRequestedToUpdateOffer = json['isRequestedToUpdateOffer'] as bool?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    notifications = (json['notifications'] as List?)?.map((dynamic e) => Notifications.fromJson(e as Map<String,dynamic>)).toList();
    unreadNotifications = json['unreadNotifications'] as List?;
    products = (json['products'] as List?)?.map((dynamic e) => Products.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['totalPrice'] = totalPrice;
    json['sellerId'] = sellerId;
    json['orderRequestId'] = orderRequestId;
    json['organizationId'] = organizationId;
    json['isPickup'] = isPickup;
    json['transportCompanyId'] = transportCompanyId;
    json['trackNumber'] = trackNumber;
    json['departureDate'] = departureDate;
    json['receivingDate'] = receivingDate;
    json['completionDate'] = completionDate;
    json['seenAt'] = seenAt;
    json['sellerUpdatedAt'] = sellerUpdatedAt;
    json['offerExpiresAt'] = offerExpiresAt;
    json['hasActiveRefundExchangeRequest'] = hasActiveRefundExchangeRequest;
    json['isExpiredOffer'] = isExpiredOffer;
    json['isRequestedToUpdateOffer'] = isRequestedToUpdateOffer;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['notifications'] = notifications?.map((e) => e.toJson()).toList();
    json['unreadNotifications'] = unreadNotifications;
    json['products'] = products?.map((e) => e.toJson()).toList();
    return json;
  }
}
