class RowsBrandAuto {
  String? id;
  int? idInt;
  String? label;
  dynamic nameAltRu;
  String? catalogSectionId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? name;

  RowsBrandAuto({
    this.id,
    this.idInt,
    this.label,
    this.nameAltRu,
    this.catalogSectionId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
  });

  RowsBrandAuto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'] as String?;
    nameAltRu = json['nameAlt_ru'];
    catalogSectionId = json['catalogSectionId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['nameAlt_ru'] = nameAltRu;
    json['catalogSectionId'] = catalogSectionId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['name'] = name;
    return json;
  }
}