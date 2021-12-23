class DataRegions {
  String? name;
  String? type;
  String? nameWithType;
  String? federalDistrict;
  String? fiasId;
  String? okato;
  String? oktmo;
  String? taxOffice;
  String? postalCode;
  String? isoCode;
  String? timezone;
  String? geonameCode;
  int? geonameId;
  String? geonameName;
  int? organizationBranchCount;

  DataRegions({
    this.name,
    this.type,
    this.nameWithType,
    this.federalDistrict,
    this.fiasId,
    this.okato,
    this.oktmo,
    this.taxOffice,
    this.postalCode,
    this.isoCode,
    this.timezone,
    this.geonameCode,
    this.geonameId,
    this.geonameName,
    this.organizationBranchCount,
  });

  DataRegions.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    type = json['type'] as String?;
    nameWithType = json['name_with_type'] as String?;
    federalDistrict = json['federal_district'] as String?;
    fiasId = json['fias_id'] as String?;
    okato = json['okato'] as String?;
    oktmo = json['oktmo'] as String?;
    taxOffice = json['tax_office'] as String?;
    postalCode = json['postal_code'] as String?;
    isoCode = json['iso_code'] as String?;
    timezone = json['timezone'] as String?;
    geonameCode = json['geoname_code'] as String?;
    geonameId = json['geoname_id'] as int?;
    geonameName = json['geoname_name'] as String?;
    organizationBranchCount = json['organizationBranchCount'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['type'] = type;
    json['name_with_type'] = nameWithType;
    json['federal_district'] = federalDistrict;
    json['fias_id'] = fiasId;
    json['okato'] = okato;
    json['oktmo'] = oktmo;
    json['tax_office'] = taxOffice;
    json['postal_code'] = postalCode;
    json['iso_code'] = isoCode;
    json['timezone'] = timezone;
    json['geoname_code'] = geonameCode;
    json['geoname_id'] = geonameId;
    json['geoname_name'] = geonameName;
    json['organizationBranchCount'] = organizationBranchCount;
    return json;
  }
}