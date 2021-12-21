import 'cart_products.dart';
import 'favorite_product.dart';
import 'roles.dart';

class User {
  String? id;
  int? idInt;
  String? phone;
  String? email;
  String? firstname;
  String? lastname;
  String? middlename;
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
  List<FavoriteProducts>? favoriteProducts;
  List<CartProducts>? cartProducts;
  List<dynamic>? sellers;
  List<dynamic>? sellerRegisterFiles;
  List<dynamic>? createdOrganizations;

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
    this.favoriteProducts,
    this.cartProducts,
    this.sellers,
    this.sellerRegisterFiles,
    this.createdOrganizations,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    phone = json['phone'] as String?;
    email = json['email'] as String?;
    firstname = json['firstname'] as String?;
    lastname = json['lastname'] as String?;
    middlename = json['middlename'] as String?;
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
    favoriteProducts = (json['favoriteProducts'] as List?)?.map((dynamic e) => FavoriteProducts.fromJson(e as Map<String,dynamic>)).toList();
    cartProducts = (json['cartProducts'] as List?)?.map((dynamic e) => CartProducts.fromJson(e as Map<String,dynamic>)).toList();
    sellers = json['sellers'] as List?;
    sellerRegisterFiles = json['sellerRegisterFiles'] as List?;
    createdOrganizations = json['createdOrganizations'] as List?;
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
    json['favoriteProducts'] = favoriteProducts?.map((e) => e.toJson()).toList();
    json['cartProducts'] = cartProducts?.map((e) => e.toJson()).toList();
    json['sellers'] = sellers;
    json['sellerRegisterFiles'] = sellerRegisterFiles;
    json['createdOrganizations'] = createdOrganizations;
    return json;
  }
}



