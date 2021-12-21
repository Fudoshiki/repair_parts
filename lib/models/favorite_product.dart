class FavoriteProducts {
  String? id;
  String? productId;
  String? acatProductId;

  FavoriteProducts({
    this.id,
    this.productId,
    this.acatProductId,
  });

  FavoriteProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    productId = json['productId'] as String?;
    acatProductId = json['acatProductId'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['productId'] = productId;
    json['acatProductId'] = acatProductId;
    return json;
  }
}
