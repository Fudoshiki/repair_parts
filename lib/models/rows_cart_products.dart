import 'data_cart_products.dart';
import 'product.dart';

class RowsCartProducts {
  String? id;
  int? idInt;
  String? userId;
  String? productId;
  dynamic acatProductId;
  int? quantity;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Product? product;

  RowsCartProducts({
    this.id,
    this.idInt,
    this.userId,
    this.productId,
    this.acatProductId,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.product,
  });

  RowsCartProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    userId = json['userId'] as String?;
    productId = json['productId'] as String?;
    acatProductId = json['acatProductId'];
    quantity = json['quantity'] as int?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    product = (json['product'] as Map<String,dynamic>?) != null ? Product.fromJson(json['product'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['userId'] = userId;
    json['productId'] = productId;
    json['acatProductId'] = acatProductId;
    json['quantity'] = quantity;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['product'] = product?.toJson();
    return json;
  }
}
