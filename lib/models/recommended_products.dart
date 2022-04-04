import 'groups.dart';

class RecommendedProducts {
  String? id;
  int? idInt;
  dynamic label;
  dynamic manufacturer;
  int? status;
  String? vendorCode;
  dynamic weight;
  dynamic length;
  dynamic width;
  dynamic height;
  dynamic previewFileId;
  dynamic acatProductId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<Groups>? groups;
  String? name;

  RecommendedProducts({
    this.id,
    this.idInt,
    this.label,
    this.manufacturer,
    this.status,
    this.vendorCode,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.previewFileId,
    this.acatProductId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.groups,
    this.name,
  });

  RecommendedProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'];
    manufacturer = json['manufacturer'];
    status = json['status'] as int?;
    vendorCode = json['vendorCode'] as String?;
    weight = json['weight'];
    length = json['length'];
    width = json['width'];
    height = json['height'];
    previewFileId = json['previewFileId'];
    acatProductId = json['acatProductId'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    groups = (json['groups'] as List?)?.map((dynamic e) => Groups.fromJson(e as Map<String,dynamic>)).toList();
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['manufacturer'] = manufacturer;
    json['status'] = status;
    json['vendorCode'] = vendorCode;
    json['weight'] = weight;
    json['length'] = length;
    json['width'] = width;
    json['height'] = height;
    json['previewFileId'] = previewFileId;
    json['acatProductId'] = acatProductId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['groups'] = groups?.map((e) => e.toJson()).toList();
    json['name'] = name;
    return json;
  }
}
