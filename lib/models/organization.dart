import 'actual_address.dart';

class Organization {
  String? id;
  int? idInt;
  String? confirmationDate;
  dynamic bannedUntil;
  int? priceBenefitPercent;
  bool? hasNds;
  String? shopName;
  String? creatorUserId;
  String? email;
  String? phone;
  String? directorFirstname;
  String? directorLastname;
  String? directorMiddlename;
  String? juristicAddressId;
  String? actualAddressId;
  String? mailingAddressId;
  String? entityCode;
  String? entityType;
  String? name;
  String? nameWithoutType;
  String? inn;
  String? kpp;
  String? ogrn;
  dynamic passportSeries;
  dynamic passportNumber;
  dynamic passportGiver;
  dynamic passportGettingDate;
  dynamic passportLocationUnitCode;
  dynamic passportRegistrationAddress;
  String? bankName;
  String? bankInn;
  String? bankBik;
  String? bankKs;
  String? bankRs;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  ActualAddress? actualAddress;

  Organization({
    this.id,
    this.idInt,
    this.confirmationDate,
    this.bannedUntil,
    this.priceBenefitPercent,
    this.hasNds,
    this.shopName,
    this.creatorUserId,
    this.email,
    this.phone,
    this.directorFirstname,
    this.directorLastname,
    this.directorMiddlename,
    this.juristicAddressId,
    this.actualAddressId,
    this.mailingAddressId,
    this.entityCode,
    this.entityType,
    this.name,
    this.nameWithoutType,
    this.inn,
    this.kpp,
    this.ogrn,
    this.passportSeries,
    this.passportNumber,
    this.passportGiver,
    this.passportGettingDate,
    this.passportLocationUnitCode,
    this.passportRegistrationAddress,
    this.bankName,
    this.bankInn,
    this.bankBik,
    this.bankKs,
    this.bankRs,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.actualAddress,
  });

  Organization.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    confirmationDate = json['confirmationDate'] as String?;
    bannedUntil = json['bannedUntil'];
    priceBenefitPercent = json['priceBenefitPercent'] as int?;
    hasNds = json['hasNds'] as bool?;
    shopName = json['shopName'] as String?;
    creatorUserId = json['creatorUserId'] as String?;
    email = json['email'] as String?;
    phone = json['phone'] as String?;
    directorFirstname = json['directorFirstname'] as String?;
    directorLastname = json['directorLastname'] as String?;
    directorMiddlename = json['directorMiddlename'] as String?;
    juristicAddressId = json['juristicAddressId'] as String?;
    actualAddressId = json['actualAddressId'] as String?;
    mailingAddressId = json['mailingAddressId'] as String?;
    entityCode = json['entityCode'] as String?;
    entityType = json['entityType'] as String?;
    name = json['name'] as String?;
    nameWithoutType = json['nameWithoutType'] as String?;
    inn = json['inn'] as String?;
    kpp = json['kpp'] as String?;
    ogrn = json['ogrn'] as String?;
    passportSeries = json['passportSeries'];
    passportNumber = json['passportNumber'];
    passportGiver = json['passportGiver'];
    passportGettingDate = json['passportGettingDate'];
    passportLocationUnitCode = json['passportLocationUnitCode'];
    passportRegistrationAddress = json['passportRegistrationAddress'];
    bankName = json['bankName'] as String?;
    bankInn = json['bankInn'] as String?;
    bankBik = json['bankBik'] as String?;
    bankKs = json['bankKs'] as String?;
    bankRs = json['bankRs'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    actualAddress = (json['actualAddress'] as Map<String,dynamic>?) != null ? ActualAddress.fromJson(json['actualAddress'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['confirmationDate'] = confirmationDate;
    json['bannedUntil'] = bannedUntil;
    json['priceBenefitPercent'] = priceBenefitPercent;
    json['hasNds'] = hasNds;
    json['shopName'] = shopName;
    json['creatorUserId'] = creatorUserId;
    json['email'] = email;
    json['phone'] = phone;
    json['directorFirstname'] = directorFirstname;
    json['directorLastname'] = directorLastname;
    json['directorMiddlename'] = directorMiddlename;
    json['juristicAddressId'] = juristicAddressId;
    json['actualAddressId'] = actualAddressId;
    json['mailingAddressId'] = mailingAddressId;
    json['entityCode'] = entityCode;
    json['entityType'] = entityType;
    json['name'] = name;
    json['nameWithoutType'] = nameWithoutType;
    json['inn'] = inn;
    json['kpp'] = kpp;
    json['ogrn'] = ogrn;
    json['passportSeries'] = passportSeries;
    json['passportNumber'] = passportNumber;
    json['passportGiver'] = passportGiver;
    json['passportGettingDate'] = passportGettingDate;
    json['passportLocationUnitCode'] = passportLocationUnitCode;
    json['passportRegistrationAddress'] = passportRegistrationAddress;
    json['bankName'] = bankName;
    json['bankInn'] = bankInn;
    json['bankBik'] = bankBik;
    json['bankKs'] = bankKs;
    json['bankRs'] = bankRs;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['actualAddress'] = actualAddress?.toJson();
    return json;
  }
}
