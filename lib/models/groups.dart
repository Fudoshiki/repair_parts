import 'product_group_relations.dart';

class Groups {
  String? id;
  int? idInt;
  String? label;
  String? nameRu;
  dynamic nameEn;
  dynamic parentId;
  String? catalogSectionId;
  String? createdAt;
  String? updatedAt;
  ProductGroupRelations? productGroupRelations;

  Groups({
    this.id,
    this.idInt,
    this.label,
    this.nameRu,
    this.nameEn,
    this.parentId,
    this.catalogSectionId,
    this.createdAt,
    this.updatedAt,
    this.productGroupRelations,
  });

  Groups.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'] as String?;
    nameRu = json['name_ru'] as String?;
    nameEn = json['name_en'];
    parentId = json['parentId'];
    catalogSectionId = json['catalogSectionId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    productGroupRelations = (json['ProductGroupRelations'] as Map<String,dynamic>?) != null ? ProductGroupRelations.fromJson(json['ProductGroupRelations'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['name_ru'] = nameRu;
    json['name_en'] = nameEn;
    json['parentId'] = parentId;
    json['catalogSectionId'] = catalogSectionId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['ProductGroupRelations'] = productGroupRelations?.toJson();
    return json;
  }
}
