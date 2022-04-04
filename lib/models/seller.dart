import 'reviews.dart';

class Seller {
  String? id;
  int? idInt;
  String? phone;
  bool? phoneIsHidden;
  String? email;
  String? firstname;
  String? lastname;
  dynamic middlename;
  dynamic bannedUntil;
  dynamic avatar;
  String? phoneVerificationDate;
  dynamic emailVerificationDate;
  int? ratingValue;
  String? addressId;
  String? sellerConfirmationDate;
  dynamic salesNumber;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<dynamic>? transportCompanies;
  List<Reviews>? reviews;

  Seller({
    this.id,
    this.idInt,
    this.phone,
    this.phoneIsHidden,
    this.email,
    this.firstname,
    this.lastname,
    this.middlename,
    this.bannedUntil,
    this.avatar,
    this.phoneVerificationDate,
    this.emailVerificationDate,
    this.ratingValue,
    this.addressId,
    this.sellerConfirmationDate,
    this.salesNumber,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.transportCompanies,
    this.reviews,
  });

  Seller.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    phone = json['phone'] as String?;
    phoneIsHidden = json['phoneIsHidden'] as bool?;
    email = json['email'] as String?;
    firstname = json['firstname'] as String?;
    lastname = json['lastname'] as String?;
    middlename = json['middlename'];
    bannedUntil = json['bannedUntil'];
    avatar = json['avatar'];
    phoneVerificationDate = json['phoneVerificationDate'] as String?;
    emailVerificationDate = json['emailVerificationDate'];
    ratingValue = json['ratingValue'] as int?;
    addressId = json['addressId'] as String?;
    sellerConfirmationDate = json['sellerConfirmationDate'] as String?;
    salesNumber = json['salesNumber'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    transportCompanies = json['transportCompanies'] as List?;
    reviews = (json['reviews'] as List?)?.map((dynamic e) => Reviews.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['phone'] = phone;
    json['phoneIsHidden'] = phoneIsHidden;
    json['email'] = email;
    json['firstname'] = firstname;
    json['lastname'] = lastname;
    json['middlename'] = middlename;
    json['bannedUntil'] = bannedUntil;
    json['avatar'] = avatar;
    json['phoneVerificationDate'] = phoneVerificationDate;
    json['emailVerificationDate'] = emailVerificationDate;
    json['ratingValue'] = ratingValue;
    json['addressId'] = addressId;
    json['sellerConfirmationDate'] = sellerConfirmationDate;
    json['salesNumber'] = salesNumber;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['transportCompanies'] = transportCompanies;
    json['reviews'] = reviews?.map((e) => e.toJson()).toList();
    return json;
  }
}
