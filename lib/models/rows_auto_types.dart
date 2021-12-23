class RowsAutoTypes {
  String? id;
  int? idInt;
  String? label;
  String? catalogSectionId;
  int? order;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? name;

  RowsAutoTypes({
    this.id,
    this.idInt,
    this.label,
    this.catalogSectionId,
    this.order,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
  });

  RowsAutoTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'] as String?;
    catalogSectionId = json['catalogSectionId'] as String?;
    order = json['order'] as int?;
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
    json['catalogSectionId'] = catalogSectionId;
    json['order'] = order;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['name'] = name;
    return json;
  }
}