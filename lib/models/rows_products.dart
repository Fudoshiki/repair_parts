class RowsProducts {
  String? id;
  int? idInt;
  dynamic label;
  dynamic manufacturer;
  int? status;
  String? vendorCode;
  String? weight;
  String? length;
  int? width;
  int? height;
  dynamic previewFileId;
  dynamic acatProductId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<dynamic>? productFiles;
  String? name;
  dynamic preview;

  RowsProducts({
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
    this.productFiles,
    this.name,
    this.preview,
  });

  RowsProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'];
    manufacturer = json['manufacturer'];
    status = json['status'] as int?;
    vendorCode = json['vendorCode'] as String?;
    weight = json['weight'].toString() as String?;
    length = json['length'].toString() as String?;
    width = json['width'] as int?;
    height = json['height'] as int?;
    previewFileId = json['previewFileId'];
    acatProductId = json['acatProductId'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    productFiles = json['productFiles'] as List?;
    name = json['name'] as String?;
    preview = json['preview'];
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
    json['productFiles'] = productFiles;
    json['name'] = name;
    json['preview'] = preview;
    return json;
  }
}