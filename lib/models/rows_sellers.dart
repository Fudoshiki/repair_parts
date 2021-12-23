import 'roles.dart';

class RowsSellers {
  String? id;
  int? idInt;
  String? phone;
  dynamic email;
  dynamic firstname;
  dynamic lastname;
  dynamic middlename;
  dynamic bannedUntil;
  dynamic avatar;
  String? phoneVerificationDate;
  dynamic emailVerificationDate;
  dynamic ratingValue;
  dynamic addressId;
  dynamic sellerConfirmationDate;
  dynamic salesNumber;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  List<Roles>? roles;
  List<dynamic>? orders;
  bool? isOnline;

  RowsSellers({
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
    this.orders,
    this.isOnline,
  });

  RowsSellers.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    phone = json['phone'] as String?;
    email = json['email'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    middlename = json['middlename'];
    bannedUntil = json['bannedUntil'];
    avatar = json['avatar'];
    phoneVerificationDate = json['phoneVerificationDate'] as String?;
    emailVerificationDate = json['emailVerificationDate'];
    ratingValue = json['ratingValue'];
    addressId = json['addressId'];
    sellerConfirmationDate = json['sellerConfirmationDate'];
    salesNumber = json['salesNumber'];
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    roles = (json['roles'] as List?)?.map((dynamic e) => Roles.fromJson(e as Map<String,dynamic>)).toList();
    orders = json['orders'] as List?;
    isOnline = json['isOnline'] as bool?;
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
    json['orders'] = orders;
    json['isOnline'] = isOnline;
    return json;
  }
}
