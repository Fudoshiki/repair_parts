import 'request_product.dart';

class RefundExchangeRequest {
  String? id;
  int? idInt;
  String? customerId;
  int? orderedQuantity;
  int? quantity;
  List<String>? reason;
  String? disputeResolution;
  String? status;
  bool? isRejected;
  dynamic comment;
  dynamic reply;
  String? requestProductId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  RequestProduct? requestProduct;
  List<dynamic>? refundExchangeRequestFiles;
  List<dynamic>? attachments;

  RefundExchangeRequest({
    this.id,
    this.idInt,
    this.customerId,
    this.orderedQuantity,
    this.quantity,
    this.reason,
    this.disputeResolution,
    this.status,
    this.isRejected,
    this.comment,
    this.reply,
    this.requestProductId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.requestProduct,
    this.refundExchangeRequestFiles,
    this.attachments,
  });

  RefundExchangeRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    customerId = json['customerId'] as String?;
    orderedQuantity = json['orderedQuantity'] as int?;
    quantity = json['quantity'] as int?;
    reason = (json['reason'] as List?)?.map((dynamic e) => e as String).toList();
    disputeResolution = json['disputeResolution'] as String?;
    status = json['status'] as String?;
    isRejected = json['isRejected'] as bool?;
    comment = json['comment'];
    reply = json['reply'];
    requestProductId = json['requestProductId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    requestProduct = (json['requestProduct'] as Map<String,dynamic>?) != null ? RequestProduct.fromJson(json['requestProduct'] as Map<String,dynamic>) : null;
    refundExchangeRequestFiles = json['refundExchangeRequestFiles'] as List?;
    attachments = json['attachments'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['customerId'] = customerId;
    json['orderedQuantity'] = orderedQuantity;
    json['quantity'] = quantity;
    json['reason'] = reason;
    json['disputeResolution'] = disputeResolution;
    json['status'] = status;
    json['isRejected'] = isRejected;
    json['comment'] = comment;
    json['reply'] = reply;
    json['requestProductId'] = requestProductId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['requestProduct'] = requestProduct?.toJson();
    json['refundExchangeRequestFiles'] = refundExchangeRequestFiles;
    json['attachments'] = attachments;
    return json;
  }
}
