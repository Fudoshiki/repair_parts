class ProductGroupRelations {
  String? productId;
  String? productGroupId;
  String? createdAt;
  String? updatedAt;

  ProductGroupRelations({
    this.productId,
    this.productGroupId,
    this.createdAt,
    this.updatedAt,
  });

  ProductGroupRelations.fromJson(Map<String, dynamic> json) {
    productId = json['productId'] as String?;
    productGroupId = json['productGroupId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['productId'] = productId;
    json['productGroupId'] = productGroupId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    return json;
  }
}
