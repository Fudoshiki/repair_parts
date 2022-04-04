import 'product.dart';
import 'recommended_products.dart';

class DataProductById {
  Product? product;
  List<dynamic>? applicabilities;
  List<dynamic>? analogs;
  List<RecommendedProducts>? recommendedProducts;

  DataProductById({
    this.product,
    this.applicabilities,
    this.analogs,
    this.recommendedProducts,
  });

  DataProductById.fromJson(Map<String, dynamic> json) {
    product = (json['product'] as Map<String,dynamic>?) != null ? Product.fromJson(json['product'] as Map<String,dynamic>) : null;
    applicabilities = json['applicabilities'] as List?;
    analogs = json['analogs'] as List?;
    recommendedProducts = (json['recommendedProducts'] as List?)?.map((dynamic e) => RecommendedProducts.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['product'] = product?.toJson();
    json['applicabilities'] = applicabilities;
    json['analogs'] = analogs;
    json['recommendedProducts'] = recommendedProducts?.map((e) => e.toJson()).toList();
    return json;
  }
}










