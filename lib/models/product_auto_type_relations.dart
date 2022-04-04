class ProductAutoTypeRelations {
  String? productId;
  String? autoTypeId;
  String? createdAt;
  String? updatedAt;

  ProductAutoTypeRelations({
    this.productId,
    this.autoTypeId,
    this.createdAt,
    this.updatedAt,
  });

  ProductAutoTypeRelations.fromJson(Map<String, dynamic> json) {
    productId = json['productId'] as String?;
    autoTypeId = json['autoTypeId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['productId'] = productId;
    json['autoTypeId'] = autoTypeId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    return json;
  }
}
