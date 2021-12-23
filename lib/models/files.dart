class Files {
  String? name;
  String? ext;
  String? path;

  Files({
    this.name,
    this.ext,
    this.path,
  });

  Files.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    ext = json['ext'] as String?;
    path = json['path'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['ext'] = ext;
    json['path'] = path;
    return json;
  }
}