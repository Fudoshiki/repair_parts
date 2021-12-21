class CurrentRole {
  String? id;
  String? label;

  CurrentRole({
    this.id,
    this.label,
  });

  CurrentRole.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    label = json['label'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['label'] = label;
    return json;
  }
}