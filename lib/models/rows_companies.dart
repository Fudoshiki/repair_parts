import 'juristic_address.dart';
import 'mailing_address.dart';

class RowsCompanies {
  String? id;
  int? idInt;
  String? userId;
  dynamic email;
  String? juristicAddressId;
  String? mailingAddressId;
  String? entityCode;
  String? entityType;
  String? name;
  String? nameWithoutType;
  String? inn;
  String? kpp;
  String? ogrn;
  bool? hasNds;
  String? bankName;
  String? bankInn;
  String? bankBik;
  String? bankKs;
  String? bankRs;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  JuristicAddress? juristicAddress;
  MailingAddress? mailingAddress;

  RowsCompanies({
    this.id,
    this.idInt,
    this.userId,
    this.email,
    this.juristicAddressId,
    this.mailingAddressId,
    this.entityCode,
    this.entityType,
    this.name,
    this.nameWithoutType,
    this.inn,
    this.kpp,
    this.ogrn,
    this.hasNds,
    this.bankName,
    this.bankInn,
    this.bankBik,
    this.bankKs,
    this.bankRs,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.juristicAddress,
    this.mailingAddress,
  });

  RowsCompanies.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    userId = json['userId'] as String?;
    email = json['email'];
    juristicAddressId = json['juristicAddressId'] as String?;
    mailingAddressId = json['mailingAddressId'] as String?;
    entityCode = json['entityCode'] as String?;
    entityType = json['entityType'] as String?;
    name = json['name'] as String?;
    nameWithoutType = json['nameWithoutType'] as String?;
    inn = json['inn'] as String?;
    kpp = json['kpp'] as String?;
    ogrn = json['ogrn'] as String?;
    hasNds = json['hasNds'] as bool?;
    bankName = json['bankName'] as String?;
    bankInn = json['bankInn'] as String?;
    bankBik = json['bankBik'] as String?;
    bankKs = json['bankKs'] as String?;
    bankRs = json['bankRs'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    juristicAddress = (json['juristicAddress'] as Map<String,dynamic>?) != null ? JuristicAddress.fromJson(json['juristicAddress'] as Map<String,dynamic>) : null;
    mailingAddress = (json['mailingAddress'] as Map<String,dynamic>?) != null ? MailingAddress.fromJson(json['mailingAddress'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['userId'] = userId;
    json['email'] = email;
    json['juristicAddressId'] = juristicAddressId;
    json['mailingAddressId'] = mailingAddressId;
    json['entityCode'] = entityCode;
    json['entityType'] = entityType;
    json['name'] = name;
    json['nameWithoutType'] = nameWithoutType;
    json['inn'] = inn;
    json['kpp'] = kpp;
    json['ogrn'] = ogrn;
    json['hasNds'] = hasNds;
    json['bankName'] = bankName;
    json['bankInn'] = bankInn;
    json['bankBik'] = bankBik;
    json['bankKs'] = bankKs;
    json['bankRs'] = bankRs;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['juristicAddress'] = juristicAddress?.toJson();
    json['mailingAddress'] = mailingAddress?.toJson();
    return json;
  }
}
