import 'roles.dart';

class User {
  String? id;
  int? idInt;
  String? phone;
  String? email;
  String? firstname;
  String? lastname;
  String? middlename;
  String? bannedUntil;
  String? avatar;
  String? phoneVerificationDate;
  String? emailVerificationDate;
  double? ratingValue;
  String? addressId;
  String? sellerConfirmationDate;
  double? salesNumber;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  List<Roles>? roles;

  User({
    this.id,
    this.idInt,
    this.phone,
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
    this.roles,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    phone = json['phone'] as String?;
    email = json['email'] as String?;
    firstname = json['firstname'] as String?;
    lastname = json['lastname'] as String?;
    middlename = json['middlename'] as String?;
    bannedUntil = json['bannedUntil'] as String?;
    avatar = json['avatar'] as String?;
    phoneVerificationDate = json['phoneVerificationDate'] as String?;
    emailVerificationDate = json['emailVerificationDate'] as String?;
    ratingValue = json['ratingValue'] as double?;
    addressId = json['addressId'] as String?;
    sellerConfirmationDate = json['sellerConfirmationDate'] as String?;
    salesNumber = json['salesNumber'] as double?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'] as String?;
    roles = (json['roles'] as List?)?.map((dynamic e) => Roles.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['phone'] = phone;
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
    json['roles'] = roles?.map((e) => e.toJson()).toList();
    return json;
  }
}
