import 'product_auto_type_relations.dart';

class AutoTypes {
  String? id;
  int? idInt;
  String? label;
  String? nameRu;
  dynamic nameEn;
  String? catalogSectionId;
  int? order;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  ProductAutoTypeRelations? productAutoTypeRelations;

  AutoTypes({
    this.id,
    this.idInt,
    this.label,
    this.nameRu,
    this.nameEn,
    this.catalogSectionId,
    this.order,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productAutoTypeRelations,
  });

  AutoTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'] as String?;
    nameRu = json['name_ru'] as String?;
    nameEn = json['name_en'];
    catalogSectionId = json['catalogSectionId'] as String?;
    order = json['order'] as int?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    productAutoTypeRelations = (json['ProductAutoTypeRelations'] as Map<String,dynamic>?) != null ? ProductAutoTypeRelations.fromJson(json['ProductAutoTypeRelations'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['name_ru'] = nameRu;
    json['name_en'] = nameEn;
    json['catalogSectionId'] = catalogSectionId;
    json['order'] = order;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['ProductAutoTypeRelations'] = productAutoTypeRelations?.toJson();
    return json;
  }
}
