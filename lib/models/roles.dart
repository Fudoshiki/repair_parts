import 'role.dart';

class Roles {
  String? id;
  int? idInt;
  String? roleId;
  String? userId;
  String? requestsBannedUntil;
  String? bannedUntil;
  List<dynamic>? bannedReason;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  Role? role;

  Roles({
    this.id,
    this.idInt,
    this.roleId,
    this.userId,
    this.requestsBannedUntil,
    this.bannedUntil,
    this.bannedReason,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.role,
  });

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    roleId = json['roleId'] as String?;
    userId = json['userId'] as String?;
    requestsBannedUntil = json['requestsBannedUntil'] as String?;
    bannedUntil = json['bannedUntil'] as String?;
    bannedReason = json['bannedReason'] as List?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'] as String?;
    role = (json['role'] as Map<String,dynamic>?) != null ? Role.fromJson(json['role'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['roleId'] = roleId;
    json['userId'] = userId;
    json['requestsBannedUntil'] = requestsBannedUntil;
    json['bannedUntil'] = bannedUntil;
    json['bannedReason'] = bannedReason;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['role'] = role?.toJson();
    return json;
  }
}
