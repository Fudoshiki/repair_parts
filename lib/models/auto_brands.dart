import 'product_auto_brand_relations.dart';

class AutoBrands {
  String? id;
  int? idInt;
  String? label;
  String? nameRu;
  dynamic nameAltRu;
  dynamic nameEn;
  String? catalogSectionId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  ProductAutoBrandRelations? productAutoBrandRelations;

  AutoBrands({
    this.id,
    this.idInt,
    this.label,
    this.nameRu,
    this.nameAltRu,
    this.nameEn,
    this.catalogSectionId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productAutoBrandRelations,
  });

  AutoBrands.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'] as String?;
    nameRu = json['name_ru'] as String?;
    nameAltRu = json['nameAlt_ru'];
    nameEn = json['name_en'];
    catalogSectionId = json['catalogSectionId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    productAutoBrandRelations = (json['ProductAutoBrandRelations'] as Map<String,dynamic>?) != null ? ProductAutoBrandRelations.fromJson(json['ProductAutoBrandRelations'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['name_ru'] = nameRu;
    json['nameAlt_ru'] = nameAltRu;
    json['name_en'] = nameEn;
    json['catalogSectionId'] = catalogSectionId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['ProductAutoBrandRelations'] = productAutoBrandRelations?.toJson();
    return json;
  }
}
