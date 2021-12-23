import 'organization_branches_by_actual_address.dart';

class AddressCityFiasIdByAoguid {
  String? id;
  int? idInt;
  String? country;
  String? region;
  dynamic area;
  String? city;
  String? settlement;
  String? street;
  String? building;
  String? apartment;
  String? postcode;
  String? regionFiasId;
  dynamic areaFiasId;
  String? cityFiasId;
  String? settlementFiasId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<OrganizationBranchesByActualAddress>? organizationBranchesByActualAddress;

  AddressCityFiasIdByAoguid({
    this.id,
    this.idInt,
    this.country,
    this.region,
    this.area,
    this.city,
    this.settlement,
    this.street,
    this.building,
    this.apartment,
    this.postcode,
    this.regionFiasId,
    this.areaFiasId,
    this.cityFiasId,
    this.settlementFiasId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.organizationBranchesByActualAddress,
  });

  AddressCityFiasIdByAoguid.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    country = json['country'] as String?;
    region = json['region'] as String?;
    area = json['area'];
    city = json['city'] as String?;
    settlement = json['settlement'] as String?;
    street = json['street'] as String?;
    building = json['building'] as String?;
    apartment = json['apartment'] as String?;
    postcode = json['postcode'] as String?;
    regionFiasId = json['regionFiasId'] as String?;
    areaFiasId = json['areaFiasId'];
    cityFiasId = json['cityFiasId'] as String?;
    settlementFiasId = json['settlementFiasId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    organizationBranchesByActualAddress = (json['organizationBranchesByActualAddress'] as List?)?.map((dynamic e) => OrganizationBranchesByActualAddress.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['country'] = country;
    json['region'] = region;
    json['area'] = area;
    json['city'] = city;
    json['settlement'] = settlement;
    json['street'] = street;
    json['building'] = building;
    json['apartment'] = apartment;
    json['postcode'] = postcode;
    json['regionFiasId'] = regionFiasId;
    json['areaFiasId'] = areaFiasId;
    json['cityFiasId'] = cityFiasId;
    json['settlementFiasId'] = settlementFiasId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['organizationBranchesByActualAddress'] = organizationBranchesByActualAddress?.map((e) => e.toJson()).toList();
    return json;
  }
}
