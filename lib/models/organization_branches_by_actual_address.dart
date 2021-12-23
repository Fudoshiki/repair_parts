class OrganizationBranchesByActualAddress {
  bool? i;
  String? o;
  String? a;
  String? c;
  String? u;
  dynamic d;
  dynamic s;

  OrganizationBranchesByActualAddress({
    this.i,
    this.o,
    this.a,
    this.c,
    this.u,
    this.d,
    this.s,
  });

  OrganizationBranchesByActualAddress.fromJson(Map<String, dynamic> json) {
    i = json['i'] as bool?;
    o = json['o'] as String?;
    a = json['a'] as String?;
    c = json['c'] as String?;
    u = json['u'] as String?;
    d = json['d'];
    s = json['s'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['i'] = i;
    json['o'] = o;
    json['a'] = a;
    json['c'] = c;
    json['u'] = u;
    json['d'] = d;
    json['s'] = s;
    return json;
  }
}