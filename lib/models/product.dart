class Product {
  String? id;
  int? idInt;
  dynamic label;
  String? nameRu;
  dynamic nameEn;
  dynamic descRu;
  dynamic descEn;
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
  List<dynamic>? productFiles;
  String? name;
  dynamic preview;

  Product({
    this.id,
    this.idInt,
    this.label,
    this.nameRu,
    this.nameEn,
    this.descRu,
    this.descEn,
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

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    label = json['label'];
    nameRu = json['name_ru'] as String?;
    nameEn = json['name_en'];
    descRu = json['desc_ru'];
    descEn = json['desc_en'];
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
    productFiles = json['productFiles'] as List?;
    name = json['name'] as String?;
    preview = json['preview'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['label'] = label;
    json['name_ru'] = nameRu;
    json['name_en'] = nameEn;
    json['desc_ru'] = descRu;
    json['desc_en'] = descEn;
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