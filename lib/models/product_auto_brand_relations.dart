class ProductAutoBrandRelations {
  String? productId;
  String? autoBrandId;
  String? createdAt;
  String? updatedAt;

  ProductAutoBrandRelations({
    this.productId,
    this.autoBrandId,
    this.createdAt,
    this.updatedAt,
  });

  ProductAutoBrandRelations.fromJson(Map<String, dynamic> json) {
    productId = json['productId'] as String?;
    autoBrandId = json['autoBrandId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['productId'] = productId;
    json['autoBrandId'] = autoBrandId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    return json;
  }
}
