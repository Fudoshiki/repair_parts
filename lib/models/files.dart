

class Files {
  String? id;
  int? idInt;
  dynamic userId;
  String? name;
  String? ext;
  int? size;
  String? path;
  int? duration;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Files({
    this.id,
    this.idInt,
    this.userId,
    this.name,
    this.ext,
    this.size,
    this.path,
    this.duration,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Files.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    userId = json['userId'];
    name = json['name'] as String?;
    ext = json['ext'] as String?;
    size = json['size'] as int?;
    path = json['path'] as String?;
    duration = json['duration'] as int?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['userId'] = userId;
    json['name'] = name;
    json['ext'] = ext;
    json['size'] = size;
    json['path'] = path;
    json['duration'] = duration;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    return json;
  }
}