class Marks {
  String? name;
  String? value;
  bool? sKD;
  bool? archival;
  bool? engine;
  String? image;
  bool? vin;

  Marks({
    this.name,
    this.value,
    this.sKD,
    this.archival,
    this.engine,
    this.image,
    this.vin,
  });

  Marks.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    value = json['value'] as String?;
    sKD = json['SKD'] as bool?;
    archival = json['archival'] as bool?;
    engine = json['engine'] as bool?;
    image = json['image'] as String?;
    vin = json['vin'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['value'] = value;
    json['SKD'] = sKD;
    json['archival'] = archival;
    json['engine'] = engine;
    json['image'] = image;
    json['vin'] = vin;
    return json;
  }
}