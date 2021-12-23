import 'user.dart';

class Members {
  String? id;
  int? idInt;
  String? userId;
  String? chatId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  User? user;

  Members({
    this.id,
    this.idInt,
    this.userId,
    this.chatId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.user,
  });

  Members.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    idInt = json['idInt'] as int?;
    userId = json['userId'] as String?;
    chatId = json['chatId'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    deletedAt = json['deletedAt'];
    user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['idInt'] = idInt;
    json['userId'] = userId;
    json['chatId'] = chatId;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['deletedAt'] = deletedAt;
    json['user'] = user?.toJson();
    return json;
  }
}


