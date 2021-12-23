import 'refund_exchange_request.dart';

class Products {
  String? id;
  int? idInt;
  bool? isSelected;
  int? quantity;
  int? count;
  int? unitPrice;
  int? deliveryQuantity;
  int? deliveryTerm;
  String? productId;
  dynamic describedProductId;
  String? requestedProductId;
  String? orderId;
  dynamic orderRequestId;
  dynamic autoBrandId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  RefundExchangeRequest? refundExchangeRequest;

  Products({
    this.id,
    this.idInt,
    this.isSelected,
    this.quantity,
    this.count,
    this.unitPrice,
    this.deliveryQuantity,
    this.deliveryTerm,
    this.productId,
    this.describedProductId,
    this.requestedProductId,
    this.orderId,
    this.orderRequestId,
    this.autoBrandId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.refundExchangeRequest,
  });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    isSelected = json['isSelected'] as bool?;
    quantity = json['quantity'] as int?;
    count = json['count'] as int?;
    unitPrice = json['unitPrice'] as int?;
    deliveryQuantity = json['deliveryQuantity'] as int?;
    deliveryTerm = json['deliveryTerm'] as int?;
    productId = json['productId'] as String?;
    describedProductId = json['describedProductId'];
    requestedProductId = json['requestedProductId'] as String?;
    orderId = json['orderId'] as String?;
    orderRequestId = json['orderRequestId'];
    autoBrandId = json['autoBrandId'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    refundExchangeRequest = (json['refundExchangeRequest'] as Map<String,dynamic>?) != null ? RefundExchangeRequest.fromJson(json['refundExchangeRequest'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['isSelected'] = isSelected;
    json['quantity'] = quantity;
    json['count'] = count;
    json['unitPrice'] = unitPrice;
    json['deliveryQuantity'] = deliveryQuantity;
    json['deliveryTerm'] = deliveryTerm;
    json['productId'] = productId;
    json['describedProductId'] = describedProductId;
    json['requestedProductId'] = requestedProductId;
    json['orderId'] = orderId;
    json['orderRequestId'] = orderRequestId;
    json['autoBrandId'] = autoBrandId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['refundExchangeRequest'] = refundExchangeRequest?.toJson();
    return json;
  }
}
